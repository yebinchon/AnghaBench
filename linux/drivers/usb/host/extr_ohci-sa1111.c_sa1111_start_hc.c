
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111_dev {scalar_t__ mapbase; int dev; } ;


 scalar_t__ USB_RESET ;
 unsigned int USB_RESET_FORCEHCRESET ;
 unsigned int USB_RESET_FORCEIFRESET ;
 unsigned int USB_RESET_PWRCTRLLOW ;
 unsigned int USB_RESET_PWRSENSELOW ;
 int dev_dbg (int *,char*) ;
 scalar_t__ machine_is_assabet () ;
 scalar_t__ machine_is_badge4 () ;
 scalar_t__ machine_is_pfs168 () ;
 scalar_t__ machine_is_xp860 () ;
 int sa1111_enable_device (struct sa1111_dev*) ;
 int udelay (int) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static int sa1111_start_hc(struct sa1111_dev *dev)
{
 unsigned int usb_rst = 0;
 int ret;

 dev_dbg(&dev->dev, "starting SA-1111 OHCI USB Controller\n");

 if (machine_is_xp860() ||
     machine_is_assabet() ||
     machine_is_pfs168() ||
     machine_is_badge4())
  usb_rst = USB_RESET_PWRSENSELOW | USB_RESET_PWRCTRLLOW;





 writel_relaxed(usb_rst | USB_RESET_FORCEIFRESET | USB_RESET_FORCEHCRESET,
        dev->mapbase + USB_RESET);





 ret = sa1111_enable_device(dev);
 if (ret == 0) {
  udelay(11);
  writel_relaxed(usb_rst, dev->mapbase + USB_RESET);
 }

 return ret;
}
