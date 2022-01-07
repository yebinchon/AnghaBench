
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ hcd_priv; } ;
struct r8a66597 {int dummy; } ;



__attribute__((used)) static inline struct r8a66597 *hcd_to_r8a66597(struct usb_hcd *hcd)
{
 return (struct r8a66597 *)(hcd->hcd_priv);
}
