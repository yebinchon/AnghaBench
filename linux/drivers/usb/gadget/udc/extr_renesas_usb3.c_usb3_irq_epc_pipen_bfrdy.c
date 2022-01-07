
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3_request {int dummy; } ;
struct renesas_usb3_ep {scalar_t__ dir_in; } ;
struct renesas_usb3 {int lock; } ;


 int PN_INT_BFRDY ;
 int USB3_PN_INT_ENA ;
 int USB3_PN_READ ;
 int USB3_PN_WRITE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb3_clear_bit (struct renesas_usb3*,int ,int ) ;
 struct renesas_usb3_ep* usb3_get_ep (struct renesas_usb3*,int) ;
 struct renesas_usb3_request* usb3_get_request (struct renesas_usb3_ep*) ;
 scalar_t__ usb3_pn_change (struct renesas_usb3*,int) ;
 int usb3_read_pipe (struct renesas_usb3_ep*,struct renesas_usb3_request*,int ) ;
 int usb3_request_done_pipen (struct renesas_usb3*,struct renesas_usb3_ep*,struct renesas_usb3_request*,int ) ;
 int usb3_write_pipe (struct renesas_usb3_ep*,struct renesas_usb3_request*,int ) ;

__attribute__((used)) static void usb3_irq_epc_pipen_bfrdy(struct renesas_usb3 *usb3, int num)
{
 struct renesas_usb3_ep *usb3_ep = usb3_get_ep(usb3, num);
 struct renesas_usb3_request *usb3_req = usb3_get_request(usb3_ep);
 bool done = 0;

 if (!usb3_req)
  return;

 spin_lock(&usb3->lock);
 if (usb3_pn_change(usb3, num))
  goto out;

 if (usb3_ep->dir_in) {

  if (!usb3_write_pipe(usb3_ep, usb3_req, USB3_PN_WRITE))
   usb3_clear_bit(usb3, PN_INT_BFRDY, USB3_PN_INT_ENA);
 } else {
  if (!usb3_read_pipe(usb3_ep, usb3_req, USB3_PN_READ))
   done = 1;
 }

out:

 spin_unlock(&usb3->lock);

 if (done)
  usb3_request_done_pipen(usb3, usb3_ep, usb3_req, 0);
}
