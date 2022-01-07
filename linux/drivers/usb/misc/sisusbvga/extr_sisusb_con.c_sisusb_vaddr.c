
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u16 ;
struct vc_data {scalar_t__ vc_origin; } ;
struct sisusb_usb_data {unsigned int sisusb_num_columns; } ;



__attribute__((used)) static inline void *sisusb_vaddr(const struct sisusb_usb_data *sisusb,
  const struct vc_data *c, unsigned int x, unsigned int y)
{
 return (u16 *)c->vc_origin + y * sisusb->sisusb_num_columns + x;
}
