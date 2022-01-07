
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
struct renesas_usb3_request {TYPE_1__ req; } ;
struct renesas_usb3_ep {scalar_t__ dir_in; } ;
struct renesas_usb3 {int dummy; } ;


 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 int usb3_set_p0_con_for_ctrl_read_status (struct renesas_usb3*) ;
 int usb3_set_p0_con_for_ctrl_write_status (struct renesas_usb3*) ;
 int usb3_set_p0_con_for_no_data (struct renesas_usb3*) ;

__attribute__((used)) static void usb3_set_status_stage(struct renesas_usb3_ep *usb3_ep,
      struct renesas_usb3_request *usb3_req)
{
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);

 if (usb3_ep->dir_in) {
  usb3_set_p0_con_for_ctrl_read_status(usb3);
 } else {
  if (!usb3_req->req.length)
   usb3_set_p0_con_for_no_data(usb3);
  else
   usb3_set_p0_con_for_ctrl_write_status(usb3);
 }
}
