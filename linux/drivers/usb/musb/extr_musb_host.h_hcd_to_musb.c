
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct musb {int dummy; } ;



__attribute__((used)) static inline struct musb *hcd_to_musb(struct usb_hcd *hcd)
{
 return ((void*)0);
}
