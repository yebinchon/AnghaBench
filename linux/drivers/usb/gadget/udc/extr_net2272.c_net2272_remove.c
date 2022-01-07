
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net2272 {int dev; int base_addr; int irq; int gadget; } ;


 int dev_attr_registers ;
 int dev_info (int ,char*) ;
 int device_remove_file (int ,int *) ;
 int free_irq (int ,struct net2272*) ;
 int iounmap (int ) ;
 int usb_del_gadget_udc (int *) ;

__attribute__((used)) static void
net2272_remove(struct net2272 *dev)
{
 usb_del_gadget_udc(&dev->gadget);
 free_irq(dev->irq, dev);
 iounmap(dev->base_addr);
 device_remove_file(dev->dev, &dev_attr_registers);

 dev_info(dev->dev, "unbind\n");
}
