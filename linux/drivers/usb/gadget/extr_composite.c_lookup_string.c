
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct usb_gadget_strings {scalar_t__ language; } ;


 int EINVAL ;
 int usb_gadget_get_string (struct usb_gadget_strings*,int,void*) ;

__attribute__((used)) static int lookup_string(
 struct usb_gadget_strings **sp,
 void *buf,
 u16 language,
 int id
)
{
 struct usb_gadget_strings *s;
 int value;

 while (*sp) {
  s = *sp++;
  if (s->language != language)
   continue;
  value = usb_gadget_get_string(s, id, buf);
  if (value > 0)
   return value;
 }
 return -EINVAL;
}
