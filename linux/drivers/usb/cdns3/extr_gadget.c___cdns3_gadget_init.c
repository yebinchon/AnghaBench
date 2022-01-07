
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3 {int dev; int dev_irq; } ;


 int DMA_BIT_MASK (int) ;
 int IRQF_SHARED ;
 int cdns3_device_irq_handler ;
 int cdns3_device_thread_irq_handler ;
 int cdns3_drd_switch_gadget (struct cdns3*,int) ;
 int cdns3_gadget_exit (struct cdns3*) ;
 int cdns3_gadget_start (struct cdns3*) ;
 int dev_err (int ,char*,int) ;
 int dev_name (int ) ;
 int devm_request_threaded_irq (int ,int ,int ,int ,int ,int ,struct cdns3*) ;
 int dma_set_mask_and_coherent (int ,int ) ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static int __cdns3_gadget_init(struct cdns3 *cdns)
{
 int ret = 0;


 ret = dma_set_mask_and_coherent(cdns->dev, DMA_BIT_MASK(32));
 if (ret) {
  dev_err(cdns->dev, "Failed to set dma mask: %d\n", ret);
  return ret;
 }

 cdns3_drd_switch_gadget(cdns, 1);
 pm_runtime_get_sync(cdns->dev);

 ret = cdns3_gadget_start(cdns);
 if (ret)
  return ret;





 ret = devm_request_threaded_irq(cdns->dev, cdns->dev_irq,
     cdns3_device_irq_handler,
     cdns3_device_thread_irq_handler,
     IRQF_SHARED, dev_name(cdns->dev), cdns);

 if (ret)
  goto err0;

 return 0;
err0:
 cdns3_gadget_exit(cdns);
 return ret;
}
