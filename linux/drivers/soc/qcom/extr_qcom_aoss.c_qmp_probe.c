
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_2__ {int knows_txdone; int * dev; } ;
struct qmp {int mbox_chan; TYPE_1__ mbox_client; int msgram; int tx_lock; int event; int * dev; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct qmp* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,char*,struct qmp*) ;
 int init_waitqueue_head (int *) ;
 int mbox_free_channel (int ) ;
 int mbox_request_channel (TYPE_1__*,int ) ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct qmp*) ;
 int qmp_close (struct qmp*) ;
 int qmp_cooling_devices_register (struct qmp*) ;
 int qmp_intr ;
 int qmp_open (struct qmp*) ;
 int qmp_pd_add (struct qmp*) ;
 int qmp_qdss_clk_add (struct qmp*) ;
 int qmp_qdss_clk_remove (struct qmp*) ;

__attribute__((used)) static int qmp_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct qmp *qmp;
 int irq;
 int ret;

 qmp = devm_kzalloc(&pdev->dev, sizeof(*qmp), GFP_KERNEL);
 if (!qmp)
  return -ENOMEM;

 qmp->dev = &pdev->dev;
 init_waitqueue_head(&qmp->event);
 mutex_init(&qmp->tx_lock);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 qmp->msgram = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(qmp->msgram))
  return PTR_ERR(qmp->msgram);

 qmp->mbox_client.dev = &pdev->dev;
 qmp->mbox_client.knows_txdone = 1;
 qmp->mbox_chan = mbox_request_channel(&qmp->mbox_client, 0);
 if (IS_ERR(qmp->mbox_chan)) {
  dev_err(&pdev->dev, "failed to acquire ipc mailbox\n");
  return PTR_ERR(qmp->mbox_chan);
 }

 irq = platform_get_irq(pdev, 0);
 ret = devm_request_irq(&pdev->dev, irq, qmp_intr, IRQF_ONESHOT,
          "aoss-qmp", qmp);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to request interrupt\n");
  goto err_free_mbox;
 }

 ret = qmp_open(qmp);
 if (ret < 0)
  goto err_free_mbox;

 ret = qmp_qdss_clk_add(qmp);
 if (ret)
  goto err_close_qmp;

 ret = qmp_pd_add(qmp);
 if (ret)
  goto err_remove_qdss_clk;

 ret = qmp_cooling_devices_register(qmp);
 if (ret)
  dev_err(&pdev->dev, "failed to register aoss cooling devices\n");

 platform_set_drvdata(pdev, qmp);

 return 0;

err_remove_qdss_clk:
 qmp_qdss_clk_remove(qmp);
err_close_qmp:
 qmp_close(qmp);
err_free_mbox:
 mbox_free_channel(qmp->mbox_chan);

 return ret;
}
