
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {int dummy; } ;



__attribute__((used)) static inline void endpoint_update(int edi,
       struct usb_host_endpoint **in,
       struct usb_host_endpoint **out,
       struct usb_host_endpoint *e)
{
 if (edi) {
  if (!*in)
   *in = e;
 } else {
  if (!*out)
   *out = e;
 }
}
