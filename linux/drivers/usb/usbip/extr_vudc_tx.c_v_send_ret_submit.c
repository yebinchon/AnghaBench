
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int tcp_socket; } ;
struct TYPE_5__ {int dev; } ;
struct vudc {TYPE_4__ ud; TYPE_1__ gadget; } ;
struct TYPE_6__ {int seqnum; } ;
struct usbip_iso_packet_descriptor {int iov_len; struct usbip_iso_packet_descriptor* iov_base; TYPE_2__ base; } ;
struct usbip_header {int iov_len; struct usbip_header* iov_base; TYPE_2__ base; } ;
struct urbp {scalar_t__ type; struct urb* urb; } ;
struct urb {int actual_length; int number_of_packets; TYPE_3__* iso_frame_desc; struct usbip_iso_packet_descriptor* transfer_buffer; int pipe; } ;
struct msghdr {int iov_len; struct msghdr* iov_base; TYPE_2__ base; } ;
struct kvec {int iov_len; struct kvec* iov_base; TYPE_2__ base; } ;
typedef int ssize_t ;
typedef int pdu_header ;
typedef int msg ;
struct TYPE_7__ {int offset; int actual_length; } ;


 int ENOMEM ;
 int EPIPE ;
 int GFP_KERNEL ;
 scalar_t__ USB_ENDPOINT_XFER_ISOC ;
 int VUDC_EVENT_ERROR_MALLOC ;
 int VUDC_EVENT_ERROR_TCP ;
 int dev_err (int *,char*,int) ;
 int free_urbp_and_urb (struct urbp*) ;
 struct usbip_iso_packet_descriptor* kcalloc (int,int,int ) ;
 int kernel_sendmsg (int ,struct usbip_iso_packet_descriptor*,struct usbip_iso_packet_descriptor*,int,size_t) ;
 int kfree (struct usbip_iso_packet_descriptor*) ;
 int memset (struct usbip_iso_packet_descriptor*,int ,int) ;
 int setup_ret_submit_pdu (struct usbip_iso_packet_descriptor*,struct urbp*) ;
 scalar_t__ usb_pipein (int ) ;
 struct usbip_iso_packet_descriptor* usbip_alloc_iso_desc_pdu (struct urb*,int*) ;
 int usbip_dbg_stub_tx (char*,int ) ;
 int usbip_event_add (TYPE_4__*,int ) ;
 int usbip_header_correct_endian (struct usbip_iso_packet_descriptor*,int) ;

__attribute__((used)) static int v_send_ret_submit(struct vudc *udc, struct urbp *urb_p)
{
 struct urb *urb = urb_p->urb;
 struct usbip_header pdu_header;
 struct usbip_iso_packet_descriptor *iso_buffer = ((void*)0);
 struct kvec *iov = ((void*)0);
 int iovnum = 0;
 int ret = 0;
 size_t txsize;
 struct msghdr msg;

 txsize = 0;
 memset(&pdu_header, 0, sizeof(pdu_header));
 memset(&msg, 0, sizeof(msg));

 if (urb->actual_length > 0 && !urb->transfer_buffer) {
  dev_err(&udc->gadget.dev,
   "urb: actual_length %d transfer_buffer null\n",
   urb->actual_length);
  return -1;
 }

 if (urb_p->type == USB_ENDPOINT_XFER_ISOC)
  iovnum = 2 + urb->number_of_packets;
 else
  iovnum = 2;

 iov = kcalloc(iovnum, sizeof(*iov), GFP_KERNEL);
 if (!iov) {
  usbip_event_add(&udc->ud, VUDC_EVENT_ERROR_MALLOC);
  ret = -ENOMEM;
  goto out;
 }
 iovnum = 0;


 setup_ret_submit_pdu(&pdu_header, urb_p);
 usbip_dbg_stub_tx("setup txdata seqnum: %d\n",
     pdu_header.base.seqnum);
 usbip_header_correct_endian(&pdu_header, 1);

 iov[iovnum].iov_base = &pdu_header;
 iov[iovnum].iov_len = sizeof(pdu_header);
 iovnum++;
 txsize += sizeof(pdu_header);


 if (urb_p->type != USB_ENDPOINT_XFER_ISOC &&
     usb_pipein(urb->pipe) && urb->actual_length > 0) {
  iov[iovnum].iov_base = urb->transfer_buffer;
  iov[iovnum].iov_len = urb->actual_length;
  iovnum++;
  txsize += urb->actual_length;
 } else if (urb_p->type == USB_ENDPOINT_XFER_ISOC &&
  usb_pipein(urb->pipe)) {

  int i;

  for (i = 0; i < urb->number_of_packets; i++) {
   iov[iovnum].iov_base = urb->transfer_buffer +
    urb->iso_frame_desc[i].offset;
   iov[iovnum].iov_len =
    urb->iso_frame_desc[i].actual_length;
   iovnum++;
   txsize += urb->iso_frame_desc[i].actual_length;
  }

  if (txsize != sizeof(pdu_header) + urb->actual_length) {
   usbip_event_add(&udc->ud, VUDC_EVENT_ERROR_TCP);
   ret = -EPIPE;
   goto out;
  }
 }



 if (urb_p->type == USB_ENDPOINT_XFER_ISOC) {
  ssize_t len = 0;

  iso_buffer = usbip_alloc_iso_desc_pdu(urb, &len);
  if (!iso_buffer) {
   usbip_event_add(&udc->ud,
     VUDC_EVENT_ERROR_MALLOC);
   ret = -ENOMEM;
   goto out;
  }

  iov[iovnum].iov_base = iso_buffer;
  iov[iovnum].iov_len = len;
  txsize += len;
  iovnum++;
 }

 ret = kernel_sendmsg(udc->ud.tcp_socket, &msg,
      iov, iovnum, txsize);
 if (ret != txsize) {
  usbip_event_add(&udc->ud, VUDC_EVENT_ERROR_TCP);
  if (ret >= 0)
   ret = -EPIPE;
  goto out;
 }

out:
 kfree(iov);
 kfree(iso_buffer);
 free_urbp_and_urb(urb_p);
 if (ret < 0)
  return ret;
 return txsize;
}
