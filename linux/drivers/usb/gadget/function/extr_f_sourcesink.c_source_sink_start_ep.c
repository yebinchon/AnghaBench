
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_request {int length; int buf; int complete; } ;
struct usb_ep {int name; } ;
struct usb_composite_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct f_sourcesink {int isoc_maxpacket; int iso_qlen; int bulk_qlen; int buflen; int pattern; TYPE_2__ function; struct usb_ep* out_ep; struct usb_ep* in_ep; struct usb_ep* iso_out_ep; struct usb_ep* iso_in_ep; int isoc_mult; int isoc_maxburst; } ;
struct TYPE_3__ {struct usb_composite_dev* cdev; } ;


 int ENOMEM ;
 int ERROR (struct usb_composite_dev*,char*,char*,char*,int ,int) ;
 int GFP_ATOMIC ;


 int free_ep_req (struct usb_ep*,struct usb_request*) ;
 int memset (int ,int,int ) ;
 int reinit_write_data (struct usb_ep*,struct usb_request*) ;
 int source_sink_complete ;
 struct usb_request* ss_alloc_ep_req (struct usb_ep*,int) ;
 int usb_ep_queue (struct usb_ep*,struct usb_request*,int ) ;

__attribute__((used)) static int source_sink_start_ep(struct f_sourcesink *ss, bool is_in,
  bool is_iso, int speed)
{
 struct usb_ep *ep;
 struct usb_request *req;
 int i, size, qlen, status = 0;

 if (is_iso) {
  switch (speed) {
  case 128:
   size = ss->isoc_maxpacket *
     (ss->isoc_mult + 1) *
     (ss->isoc_maxburst + 1);
   break;
  case 129:
   size = ss->isoc_maxpacket * (ss->isoc_mult + 1);
   break;
  default:
   size = ss->isoc_maxpacket > 1023 ?
     1023 : ss->isoc_maxpacket;
   break;
  }
  ep = is_in ? ss->iso_in_ep : ss->iso_out_ep;
  qlen = ss->iso_qlen;
 } else {
  ep = is_in ? ss->in_ep : ss->out_ep;
  qlen = ss->bulk_qlen;
  size = ss->buflen;
 }

 for (i = 0; i < qlen; i++) {
  req = ss_alloc_ep_req(ep, size);
  if (!req)
   return -ENOMEM;

  req->complete = source_sink_complete;
  if (is_in)
   reinit_write_data(ep, req);
  else if (ss->pattern != 2)
   memset(req->buf, 0x55, req->length);

  status = usb_ep_queue(ep, req, GFP_ATOMIC);
  if (status) {
   struct usb_composite_dev *cdev;

   cdev = ss->function.config->cdev;
   ERROR(cdev, "start %s%s %s --> %d\n",
         is_iso ? "ISO-" : "", is_in ? "IN" : "OUT",
         ep->name, status);
   free_ep_req(ep, req);
   return status;
  }
 }

 return status;
}
