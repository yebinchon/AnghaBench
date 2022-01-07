
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3_request {int dummy; } ;
struct renesas_usb3_ep {scalar_t__ dir_in; } ;


 int USB3_P0_READ ;
 int USB3_P0_WRITE ;
 int usb3_read_pipe (struct renesas_usb3_ep*,struct renesas_usb3_request*,int ) ;
 int usb3_set_status_stage (struct renesas_usb3_ep*,struct renesas_usb3_request*) ;
 int usb3_write_pipe (struct renesas_usb3_ep*,struct renesas_usb3_request*,int ) ;

__attribute__((used)) static void usb3_p0_xfer(struct renesas_usb3_ep *usb3_ep,
    struct renesas_usb3_request *usb3_req)
{
 int ret;

 if (usb3_ep->dir_in)
  ret = usb3_write_pipe(usb3_ep, usb3_req, USB3_P0_WRITE);
 else
  ret = usb3_read_pipe(usb3_ep, usb3_req, USB3_P0_READ);

 if (!ret)
  usb3_set_status_stage(usb3_ep, usb3_req);
}
