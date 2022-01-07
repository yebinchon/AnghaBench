
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_descriptor_header {scalar_t__ bLength; } ;


 int GFP_KERNEL ;
 void* kmalloc (unsigned int,int ) ;
 int memcpy (void*,struct usb_descriptor_header*,scalar_t__) ;

struct usb_descriptor_header **
usb_copy_descriptors(struct usb_descriptor_header **src)
{
 struct usb_descriptor_header **tmp;
 unsigned bytes;
 unsigned n_desc;
 void *mem;
 struct usb_descriptor_header **ret;


 for (bytes = 0, n_desc = 0, tmp = src; *tmp; tmp++, n_desc++)
  bytes += (*tmp)->bLength;
 bytes += (n_desc + 1) * sizeof(*tmp);

 mem = kmalloc(bytes, GFP_KERNEL);
 if (!mem)
  return ((void*)0);





 tmp = mem;
 ret = mem;
 mem += (n_desc + 1) * sizeof(*tmp);
 while (*src) {
  memcpy(mem, *src, (*src)->bLength);
  *tmp = mem;
  tmp++;
  mem += (*src)->bLength;
  src++;
 }
 *tmp = ((void*)0);

 return ret;
}
