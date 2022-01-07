
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;


 int gadget_is_altset_supported (struct usb_gadget*) ;

__attribute__((used)) static inline bool can_support_ecm(struct usb_gadget *gadget)
{
 if (!gadget_is_altset_supported(gadget))
  return 0;





 return 1;
}
