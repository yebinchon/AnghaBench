
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_visible_origin; } ;
struct sisusb_usb_data {int cur_start_addr; int scrbuf; } ;


 int SISCR ;
 int sisusb_setidxreg (struct sisusb_usb_data*,int ,int,int) ;

__attribute__((used)) static inline void
sisusbcon_set_start_address(struct sisusb_usb_data *sisusb, struct vc_data *c)
{
 sisusb->cur_start_addr = (c->vc_visible_origin - sisusb->scrbuf) / 2;

 sisusb_setidxreg(sisusb, SISCR, 0x0c, (sisusb->cur_start_addr >> 8));
 sisusb_setidxreg(sisusb, SISCR, 0x0d, (sisusb->cur_start_addr & 0xff));
}
