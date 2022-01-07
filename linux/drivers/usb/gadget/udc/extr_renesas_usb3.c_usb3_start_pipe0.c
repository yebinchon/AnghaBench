
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; } ;
struct renesas_usb3_request {TYPE_1__ req; } ;
struct renesas_usb3_ep {int started; scalar_t__ dir_in; } ;
struct renesas_usb3 {int dummy; } ;


 int P0_MOD_DIR ;
 int USB3_P0_MOD ;
 int usb3_clear_bit (struct renesas_usb3*,int ,int ) ;
 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 int usb3_p0_xfer (struct renesas_usb3_ep*,struct renesas_usb3_request*) ;
 int usb3_set_bit (struct renesas_usb3*,int ,int ) ;
 int usb3_set_p0_con_for_ctrl_read_data (struct renesas_usb3*) ;
 int usb3_set_p0_con_for_ctrl_write_data (struct renesas_usb3*) ;

__attribute__((used)) static void usb3_start_pipe0(struct renesas_usb3_ep *usb3_ep,
        struct renesas_usb3_request *usb3_req)
{
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);

 if (usb3_ep->started)
  return;

 usb3_ep->started = 1;

 if (usb3_ep->dir_in) {
  usb3_set_bit(usb3, P0_MOD_DIR, USB3_P0_MOD);
  usb3_set_p0_con_for_ctrl_read_data(usb3);
 } else {
  usb3_clear_bit(usb3, P0_MOD_DIR, USB3_P0_MOD);
  if (usb3_req->req.length)
   usb3_set_p0_con_for_ctrl_write_data(usb3);
 }

 usb3_p0_xfer(usb3_ep, usb3_req);
}
