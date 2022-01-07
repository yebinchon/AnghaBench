
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_block; int knows_txdone; int * rx_callback; int * tx_prepare; int * tx_done; struct device* dev; } ;
struct wkup_m3_ipc {struct task_struct* mbox; int * ops; int state; struct device* dev; struct rproc* rproc; TYPE_1__ mbox_client; struct task_struct* ipc_mem_base; } ;
struct task_struct {int dummy; } ;
struct rproc {int dummy; } ;
struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
typedef int phandle ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int M3_STATE_RESET ;
 int PTR_ERR (struct task_struct*) ;
 int dev_err (struct device*,char*,...) ;
 struct task_struct* devm_ioremap_resource (struct device*,struct resource*) ;
 struct wkup_m3_ipc* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct wkup_m3_ipc*) ;
 int ipc_ops ;
 struct task_struct* kthread_run (void*,struct wkup_m3_ipc*,char*) ;
 struct wkup_m3_ipc* m3_ipc_state ;
 int mbox_free_channel (struct task_struct*) ;
 struct task_struct* mbox_request_channel (TYPE_1__*,int ) ;
 scalar_t__ of_property_read_u32 (int ,char*,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 struct rproc* rproc_get_by_phandle (int ) ;
 int rproc_put (struct rproc*) ;
 scalar_t__ wkup_m3_rproc_boot_thread ;
 int wkup_m3_txev_handler ;

__attribute__((used)) static int wkup_m3_ipc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 int irq, ret;
 phandle rproc_phandle;
 struct rproc *m3_rproc;
 struct resource *res;
 struct task_struct *task;
 struct wkup_m3_ipc *m3_ipc;

 m3_ipc = devm_kzalloc(dev, sizeof(*m3_ipc), GFP_KERNEL);
 if (!m3_ipc)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 m3_ipc->ipc_mem_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(m3_ipc->ipc_mem_base)) {
  dev_err(dev, "could not ioremap ipc_mem\n");
  return PTR_ERR(m3_ipc->ipc_mem_base);
 }

 irq = platform_get_irq(pdev, 0);
 if (!irq) {
  dev_err(&pdev->dev, "no irq resource\n");
  return -ENXIO;
 }

 ret = devm_request_irq(dev, irq, wkup_m3_txev_handler,
          0, "wkup_m3_txev", m3_ipc);
 if (ret) {
  dev_err(dev, "request_irq failed\n");
  return ret;
 }

 m3_ipc->mbox_client.dev = dev;
 m3_ipc->mbox_client.tx_done = ((void*)0);
 m3_ipc->mbox_client.tx_prepare = ((void*)0);
 m3_ipc->mbox_client.rx_callback = ((void*)0);
 m3_ipc->mbox_client.tx_block = 0;
 m3_ipc->mbox_client.knows_txdone = 0;

 m3_ipc->mbox = mbox_request_channel(&m3_ipc->mbox_client, 0);

 if (IS_ERR(m3_ipc->mbox)) {
  dev_err(dev, "IPC Request for A8->M3 Channel failed! %ld\n",
   PTR_ERR(m3_ipc->mbox));
  return PTR_ERR(m3_ipc->mbox);
 }

 if (of_property_read_u32(dev->of_node, "ti,rproc", &rproc_phandle)) {
  dev_err(&pdev->dev, "could not get rproc phandle\n");
  ret = -ENODEV;
  goto err_free_mbox;
 }

 m3_rproc = rproc_get_by_phandle(rproc_phandle);
 if (!m3_rproc) {
  dev_err(&pdev->dev, "could not get rproc handle\n");
  ret = -EPROBE_DEFER;
  goto err_free_mbox;
 }

 m3_ipc->rproc = m3_rproc;
 m3_ipc->dev = dev;
 m3_ipc->state = M3_STATE_RESET;

 m3_ipc->ops = &ipc_ops;






 task = kthread_run((void *)wkup_m3_rproc_boot_thread, m3_ipc,
      "wkup_m3_rproc_loader");

 if (IS_ERR(task)) {
  dev_err(dev, "can't create rproc_boot thread\n");
  ret = PTR_ERR(task);
  goto err_put_rproc;
 }

 m3_ipc_state = m3_ipc;

 return 0;

err_put_rproc:
 rproc_put(m3_rproc);
err_free_mbox:
 mbox_free_channel(m3_ipc->mbox);
 return ret;
}
