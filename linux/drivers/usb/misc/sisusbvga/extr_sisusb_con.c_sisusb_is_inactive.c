
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {scalar_t__ vc_mode; } ;
struct sisusb_usb_data {scalar_t__ textmodedestroyed; scalar_t__ is_gfx; } ;


 scalar_t__ KD_TEXT ;

__attribute__((used)) static int
sisusb_is_inactive(struct vc_data *c, struct sisusb_usb_data *sisusb)
{
 if (sisusb->is_gfx ||
     sisusb->textmodedestroyed ||
     c->vc_mode != KD_TEXT)
  return 1;

 return 0;
}
