
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_host_interface {int dummy; } ;
struct usb_endpoint_descriptor {int bInterval; } ;
struct us_data {scalar_t__ protocol; int ep_bInterval; int pusb_dev; int recv_intr_pipe; int recv_bulk_pipe; int send_bulk_pipe; int recv_ctrl_pipe; int send_ctrl_pipe; TYPE_1__* pusb_intf; } ;
struct TYPE_2__ {struct usb_host_interface* cur_altsetting; } ;


 scalar_t__ USB_PR_CBI ;
 int usb_endpoint_num (struct usb_endpoint_descriptor*) ;
 int usb_find_common_endpoints (struct usb_host_interface*,struct usb_endpoint_descriptor**,struct usb_endpoint_descriptor**,int *,int *) ;
 int usb_find_int_in_endpoint (struct usb_host_interface*,struct usb_endpoint_descriptor**) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_rcvintpipe (int ,int ) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;
 int usb_stor_dbg (struct us_data*,char*) ;

__attribute__((used)) static int get_pipes(struct us_data *us)
{
 struct usb_host_interface *alt = us->pusb_intf->cur_altsetting;
 struct usb_endpoint_descriptor *ep_in;
 struct usb_endpoint_descriptor *ep_out;
 struct usb_endpoint_descriptor *ep_int;
 int res;







 res = usb_find_common_endpoints(alt, &ep_in, &ep_out, ((void*)0), ((void*)0));
 if (res) {
  usb_stor_dbg(us, "bulk endpoints not found\n");
  return res;
 }

 res = usb_find_int_in_endpoint(alt, &ep_int);
 if (res && us->protocol == USB_PR_CBI) {
  usb_stor_dbg(us, "interrupt endpoint not found\n");
  return res;
 }


 us->send_ctrl_pipe = usb_sndctrlpipe(us->pusb_dev, 0);
 us->recv_ctrl_pipe = usb_rcvctrlpipe(us->pusb_dev, 0);
 us->send_bulk_pipe = usb_sndbulkpipe(us->pusb_dev,
  usb_endpoint_num(ep_out));
 us->recv_bulk_pipe = usb_rcvbulkpipe(us->pusb_dev,
  usb_endpoint_num(ep_in));
 if (ep_int) {
  us->recv_intr_pipe = usb_rcvintpipe(us->pusb_dev,
   usb_endpoint_num(ep_int));
  us->ep_bInterval = ep_int->bInterval;
 }
 return 0;
}
