
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ctrlrequest {int dummy; } ;
struct renesas_usb3_ep {scalar_t__ started; } ;
struct renesas_usb3 {int gadget; TYPE_1__* driver; } ;
struct TYPE_2__ {scalar_t__ (* setup ) (int *,struct usb_ctrlrequest*) ;} ;


 int ECONNRESET ;
 scalar_t__ stub1 (int *,struct usb_ctrlrequest*) ;
 struct renesas_usb3_ep* usb3_get_ep (struct renesas_usb3*,int ) ;
 int usb3_get_request (struct renesas_usb3_ep*) ;
 int usb3_get_setup_data (struct renesas_usb3*,struct usb_ctrlrequest*) ;
 int usb3_handle_standard_request (struct renesas_usb3*,struct usb_ctrlrequest*) ;
 int usb3_p0_con_clear_buffer (struct renesas_usb3*) ;
 int usb3_request_done (struct renesas_usb3_ep*,int ,int ) ;
 int usb3_set_p0_con_stall (struct renesas_usb3*) ;

__attribute__((used)) static void usb3_irq_epc_pipe0_setup(struct renesas_usb3 *usb3)
{
 struct usb_ctrlrequest ctrl;
 struct renesas_usb3_ep *usb3_ep = usb3_get_ep(usb3, 0);


 if (usb3_ep->started)
  usb3_request_done(usb3_ep, usb3_get_request(usb3_ep),
      -ECONNRESET);

 usb3_p0_con_clear_buffer(usb3);
 usb3_get_setup_data(usb3, &ctrl);
 if (!usb3_handle_standard_request(usb3, &ctrl))
  if (usb3->driver->setup(&usb3->gadget, &ctrl) < 0)
   usb3_set_p0_con_stall(usb3);
}
