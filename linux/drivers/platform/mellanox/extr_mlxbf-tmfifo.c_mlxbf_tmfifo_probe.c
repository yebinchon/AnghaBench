
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_net_config {int mac; int status; int mtu; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mlxbf_tmfifo {int is_ready; int timer; TYPE_1__* irq_info; void* tx_base; void* rx_base; int lock; int work; int spin_lock; } ;
typedef int net_config ;
struct TYPE_2__ {int index; scalar_t__ irq; struct mlxbf_tmfifo* fifo; } ;


 int ENOMEM ;
 int ETH_DATA_LEN ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (void*) ;
 int MLXBF_TMFIFO_NET_FEATURES ;
 scalar_t__ MLXBF_TMFIFO_TIMER_INTERVAL ;
 int MLXBF_TM_MAX_IRQ ;
 int PTR_ERR (void*) ;
 int VIRTIO_ID_CONSOLE ;
 int VIRTIO_ID_NET ;
 int VIRTIO_NET_S_LINK_UP ;
 int dev_err (struct device*,char*) ;
 struct mlxbf_tmfifo* devm_kzalloc (struct device*,int,int ) ;
 void* devm_platform_ioremap_resource (struct platform_device*,int) ;
 int devm_request_irq (struct device*,scalar_t__,int ,int ,char*,TYPE_1__*) ;
 scalar_t__ jiffies ;
 int memset (struct virtio_net_config*,int ,int) ;
 int mlxbf_tmfifo_cleanup (struct mlxbf_tmfifo*) ;
 int mlxbf_tmfifo_create_vdev (struct device*,struct mlxbf_tmfifo*,int ,int ,struct virtio_net_config*,int) ;
 int mlxbf_tmfifo_get_cfg_mac (int ) ;
 int mlxbf_tmfifo_irq_handler ;
 int mlxbf_tmfifo_set_threshold (struct mlxbf_tmfifo*) ;
 int mlxbf_tmfifo_timer ;
 int mlxbf_tmfifo_work_handler ;
 int mod_timer (int *,scalar_t__) ;
 int mutex_init (int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int) ;
 int platform_set_drvdata (struct platform_device*,struct mlxbf_tmfifo*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int mlxbf_tmfifo_probe(struct platform_device *pdev)
{
 struct virtio_net_config net_config;
 struct device *dev = &pdev->dev;
 struct mlxbf_tmfifo *fifo;
 int i, rc;

 fifo = devm_kzalloc(dev, sizeof(*fifo), GFP_KERNEL);
 if (!fifo)
  return -ENOMEM;

 spin_lock_init(&fifo->spin_lock);
 INIT_WORK(&fifo->work, mlxbf_tmfifo_work_handler);
 mutex_init(&fifo->lock);


 fifo->rx_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(fifo->rx_base))
  return PTR_ERR(fifo->rx_base);


 fifo->tx_base = devm_platform_ioremap_resource(pdev, 1);
 if (IS_ERR(fifo->tx_base))
  return PTR_ERR(fifo->tx_base);

 platform_set_drvdata(pdev, fifo);

 timer_setup(&fifo->timer, mlxbf_tmfifo_timer, 0);

 for (i = 0; i < MLXBF_TM_MAX_IRQ; i++) {
  fifo->irq_info[i].index = i;
  fifo->irq_info[i].fifo = fifo;
  fifo->irq_info[i].irq = platform_get_irq(pdev, i);
  rc = devm_request_irq(dev, fifo->irq_info[i].irq,
          mlxbf_tmfifo_irq_handler, 0,
          "tmfifo", &fifo->irq_info[i]);
  if (rc) {
   dev_err(dev, "devm_request_irq failed\n");
   fifo->irq_info[i].irq = 0;
   return rc;
  }
 }

 mlxbf_tmfifo_set_threshold(fifo);


 rc = mlxbf_tmfifo_create_vdev(dev, fifo, VIRTIO_ID_CONSOLE, 0, ((void*)0), 0);
 if (rc)
  goto fail;


 memset(&net_config, 0, sizeof(net_config));
 net_config.mtu = ETH_DATA_LEN;
 net_config.status = VIRTIO_NET_S_LINK_UP;
 mlxbf_tmfifo_get_cfg_mac(net_config.mac);
 rc = mlxbf_tmfifo_create_vdev(dev, fifo, VIRTIO_ID_NET,
          MLXBF_TMFIFO_NET_FEATURES, &net_config,
          sizeof(net_config));
 if (rc)
  goto fail;

 mod_timer(&fifo->timer, jiffies + MLXBF_TMFIFO_TIMER_INTERVAL);

 fifo->is_ready = 1;
 return 0;

fail:
 mlxbf_tmfifo_cleanup(fifo);
 return rc;
}
