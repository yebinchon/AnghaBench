
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net2272 {int irq; int dev; int gadget; int chiprev; int base_addr; } ;


 int CHIPREV_2272 ;
 int ENODEV ;
 int dev_attr_registers ;
 int dev_err (int ,char*,int ) ;
 int dev_info (int ,char*,int ,...) ;
 int dev_warn (int ,char*) ;
 int device_create_file (int ,int *) ;
 int device_remove_file (int ,int *) ;
 int dma_mode_string () ;
 int driver_desc ;
 int driver_name ;
 int driver_vers ;
 int free_irq (int ,struct net2272*) ;
 int net2272_gadget_release ;
 int net2272_irq ;
 scalar_t__ net2272_present (struct net2272*) ;
 int net2272_read (struct net2272*,int ) ;
 int net2272_usb_reinit (struct net2272*) ;
 int net2272_usb_reset (struct net2272*) ;
 int request_irq (int ,int ,unsigned int,int ,struct net2272*) ;
 int usb_add_gadget_udc_release (int ,int *,int ) ;

__attribute__((used)) static int
net2272_probe_fin(struct net2272 *dev, unsigned int irqflags)
{
 int ret;


 if (net2272_present(dev)) {
  dev_warn(dev->dev, "2272 not found!\n");
  ret = -ENODEV;
  goto err;
 }

 net2272_usb_reset(dev);
 net2272_usb_reinit(dev);

 ret = request_irq(dev->irq, net2272_irq, irqflags, driver_name, dev);
 if (ret) {
  dev_err(dev->dev, "request interrupt %i failed\n", dev->irq);
  goto err;
 }

 dev->chiprev = net2272_read(dev, CHIPREV_2272);


 dev_info(dev->dev, "%s\n", driver_desc);
 dev_info(dev->dev, "irq %i, mem %p, chip rev %04x, dma %s\n",
  dev->irq, dev->base_addr, dev->chiprev,
  dma_mode_string());
 dev_info(dev->dev, "version: %s\n", driver_vers);

 ret = device_create_file(dev->dev, &dev_attr_registers);
 if (ret)
  goto err_irq;

 ret = usb_add_gadget_udc_release(dev->dev, &dev->gadget,
   net2272_gadget_release);
 if (ret)
  goto err_add_udc;

 return 0;

err_add_udc:
 device_remove_file(dev->dev, &dev_attr_registers);
 err_irq:
 free_irq(dev->irq, dev);
 err:
 return ret;
}
