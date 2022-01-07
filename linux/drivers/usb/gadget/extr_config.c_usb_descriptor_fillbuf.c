
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_descriptor_header {unsigned int bLength; } ;


 int EINVAL ;
 int memcpy (int *,struct usb_descriptor_header const*,unsigned int) ;

int
usb_descriptor_fillbuf(void *buf, unsigned buflen,
  const struct usb_descriptor_header **src)
{
 u8 *dest = buf;

 if (!src)
  return -EINVAL;


 for (; ((void*)0) != *src; src++) {
  unsigned len = (*src)->bLength;

  if (len > buflen)
   return -EINVAL;
  memcpy(dest, *src, len);
  buflen -= len;
  dest += len;
 }
 return dest - (u8 *)buf;
}
