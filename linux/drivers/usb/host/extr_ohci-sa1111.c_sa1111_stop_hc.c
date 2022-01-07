
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111_dev {scalar_t__ mapbase; int dev; } ;


 scalar_t__ USB_RESET ;
 unsigned int USB_RESET_FORCEHCRESET ;
 unsigned int USB_RESET_FORCEIFRESET ;
 int dev_dbg (int *,char*) ;
 unsigned int readl_relaxed (scalar_t__) ;
 int sa1111_disable_device (struct sa1111_dev*) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static void sa1111_stop_hc(struct sa1111_dev *dev)
{
 unsigned int usb_rst;

 dev_dbg(&dev->dev, "stopping SA-1111 OHCI USB Controller\n");




 usb_rst = readl_relaxed(dev->mapbase + USB_RESET);
 writel_relaxed(usb_rst | USB_RESET_FORCEIFRESET | USB_RESET_FORCEHCRESET,
        dev->mapbase + USB_RESET);




 sa1111_disable_device(dev);
}
