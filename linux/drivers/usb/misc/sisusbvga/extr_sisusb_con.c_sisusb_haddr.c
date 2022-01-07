
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {unsigned long vc_origin; } ;
struct sisusb_usb_data {unsigned long scrbuf; unsigned int sisusb_num_columns; unsigned long vrambase; } ;



__attribute__((used)) static inline unsigned long sisusb_haddr(const struct sisusb_usb_data *sisusb,
       const struct vc_data *c, unsigned int x, unsigned int y)
{
 unsigned long offset = c->vc_origin - sisusb->scrbuf;


 offset += 2 * (y * sisusb->sisusb_num_columns + x);

 return sisusb->vrambase + offset;
}
