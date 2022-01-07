
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int wValue; } ;
struct fotg210_udc {int dummy; } ;


 int fotg210_request_error (struct fotg210_udc*) ;
 int fotg210_set_cxdone (struct fotg210_udc*) ;
 int fotg210_set_dev_addr (struct fotg210_udc*,int) ;

__attribute__((used)) static void fotg210_set_address(struct fotg210_udc *fotg210,
    struct usb_ctrlrequest *ctrl)
{
 if (ctrl->wValue >= 0x0100) {
  fotg210_request_error(fotg210);
 } else {
  fotg210_set_dev_addr(fotg210, ctrl->wValue);
  fotg210_set_cxdone(fotg210);
 }
}
