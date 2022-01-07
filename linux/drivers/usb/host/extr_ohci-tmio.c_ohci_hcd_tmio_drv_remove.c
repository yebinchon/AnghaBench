
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int regs; } ;
struct tmio_hcd {int ccr; } ;
struct platform_device {int dummy; } ;
struct mfd_cell {int (* disable ) (struct platform_device*) ;} ;


 struct tmio_hcd* hcd_to_tmio (struct usb_hcd*) ;
 int iounmap (int ) ;
 struct mfd_cell* mfd_get_cell (struct platform_device*) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct platform_device*) ;
 int tmio_stop_hc (struct platform_device*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ohci_hcd_tmio_drv_remove(struct platform_device *dev)
{
 struct usb_hcd *hcd = platform_get_drvdata(dev);
 struct tmio_hcd *tmio = hcd_to_tmio(hcd);
 const struct mfd_cell *cell = mfd_get_cell(dev);

 usb_remove_hcd(hcd);
 tmio_stop_hc(dev);
 if (cell->disable)
  cell->disable(dev);
 iounmap(hcd->regs);
 iounmap(tmio->ccr);
 usb_put_hcd(hcd);

 return 0;
}
