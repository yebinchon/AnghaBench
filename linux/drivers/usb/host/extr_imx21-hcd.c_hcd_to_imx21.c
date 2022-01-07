
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ hcd_priv; } ;
struct imx21 {int dummy; } ;



__attribute__((used)) static inline struct imx21 *hcd_to_imx21(struct usb_hcd *hcd)
{
 return (struct imx21 *)hcd->hcd_priv;
}
