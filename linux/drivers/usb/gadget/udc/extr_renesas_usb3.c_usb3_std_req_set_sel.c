
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_ctrlrequest {int wLength; } ;
struct renesas_usb3 {int ep0_req; } ;


 int dev_dbg (int ,char*,int ) ;
 int le16_to_cpu (int ) ;
 int usb3_pipe0_internal_xfer (struct renesas_usb3*,int *,int,int ) ;
 int usb3_pipe0_set_sel_completion ;
 int usb3_to_dev (struct renesas_usb3*) ;
 int usb_req_to_usb3_req (int ) ;

__attribute__((used)) static bool usb3_std_req_set_sel(struct renesas_usb3 *usb3,
     struct usb_ctrlrequest *ctrl)
{
 u16 w_length = le16_to_cpu(ctrl->wLength);

 if (w_length != 6)
  return 1;

 dev_dbg(usb3_to_dev(usb3), "set_sel: req = %p\n",
  usb_req_to_usb3_req(usb3->ep0_req));
 usb3_pipe0_internal_xfer(usb3, ((void*)0), 6, usb3_pipe0_set_sel_completion);

 return 0;
}
