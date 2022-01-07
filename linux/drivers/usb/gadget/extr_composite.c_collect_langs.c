
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget_strings {int language; } ;
typedef scalar_t__ __le16 ;


 scalar_t__ cpu_to_le16 (int ) ;

__attribute__((used)) static void collect_langs(struct usb_gadget_strings **sp, __le16 *buf)
{
 const struct usb_gadget_strings *s;
 __le16 language;
 __le16 *tmp;

 while (*sp) {
  s = *sp;
  language = cpu_to_le16(s->language);
  for (tmp = buf; *tmp && tmp < &buf[126]; tmp++) {
   if (*tmp == language)
    goto repeat;
  }
  *tmp++ = language;
repeat:
  sp++;
 }
}
