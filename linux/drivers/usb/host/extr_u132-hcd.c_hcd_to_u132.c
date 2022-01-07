
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ hcd_priv; } ;
struct u132 {int dummy; } ;



__attribute__((used)) static inline struct u132 *hcd_to_u132(struct usb_hcd *hcd)
{
 return (struct u132 *)(hcd->hcd_priv);
}
