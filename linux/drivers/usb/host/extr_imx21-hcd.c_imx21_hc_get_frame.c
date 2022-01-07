
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct imx21 {scalar_t__ regs; } ;


 scalar_t__ USBH_FRMNUB ;
 struct imx21* hcd_to_imx21 (struct usb_hcd*) ;
 int readl (scalar_t__) ;
 int wrap_frame (int ) ;

__attribute__((used)) static int imx21_hc_get_frame(struct usb_hcd *hcd)
{
 struct imx21 *imx21 = hcd_to_imx21(hcd);

 return wrap_frame(readl(imx21->regs + USBH_FRMNUB));
}
