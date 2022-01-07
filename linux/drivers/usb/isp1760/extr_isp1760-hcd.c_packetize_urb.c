
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct usb_ctrlrequest {int dummy; } ;
struct urb {int transfer_buffer_length; void* setup_packet; int transfer_flags; int pipe; void* transfer_buffer; int dev; scalar_t__ transfer_dma; } ;
struct list_head {int dummy; } ;
struct isp1760_qtd {int qtd_list; } ;
typedef int gfp_t ;


 scalar_t__ IN_PID ;
 scalar_t__ OUT_PID ;
 scalar_t__ SETUP_PID ;
 int URB_ZERO_PACKET ;
 int WARN_ON (int) ;
 int dev_err (int ,char*,unsigned long,int) ;
 int list_add_tail (int *,struct list_head*) ;
 int max_packet (int ) ;
 struct isp1760_qtd* qtd_alloc (int ,struct urb*,scalar_t__) ;
 int qtd_fill (struct isp1760_qtd*,void*,int) ;
 int qtd_list_free (struct list_head*) ;
 int usb_maxpacket (int ,int ,int ) ;
 scalar_t__ usb_pipebulk (int ) ;
 scalar_t__ usb_pipecontrol (int ) ;
 scalar_t__ usb_pipein (int ) ;
 int usb_pipeout (int ) ;

__attribute__((used)) static void packetize_urb(struct usb_hcd *hcd,
  struct urb *urb, struct list_head *head, gfp_t flags)
{
 struct isp1760_qtd *qtd;
 void *buf;
 int len, maxpacketsize;
 u8 packet_type;





 if (!urb->transfer_buffer && urb->transfer_buffer_length) {

  dev_err(hcd->self.controller,
    "buf is null, dma is %08lx len is %d\n",
    (long unsigned)urb->transfer_dma,
    urb->transfer_buffer_length);
  WARN_ON(1);
 }

 if (usb_pipein(urb->pipe))
  packet_type = IN_PID;
 else
  packet_type = OUT_PID;

 if (usb_pipecontrol(urb->pipe)) {
  qtd = qtd_alloc(flags, urb, SETUP_PID);
  if (!qtd)
   goto cleanup;
  qtd_fill(qtd, urb->setup_packet, sizeof(struct usb_ctrlrequest));
  list_add_tail(&qtd->qtd_list, head);


  if (urb->transfer_buffer_length == 0)
   packet_type = IN_PID;
 }

 maxpacketsize = max_packet(usb_maxpacket(urb->dev, urb->pipe,
      usb_pipeout(urb->pipe)));






 buf = urb->transfer_buffer;
 len = urb->transfer_buffer_length;

 for (;;) {
  int this_qtd_len;

  qtd = qtd_alloc(flags, urb, packet_type);
  if (!qtd)
   goto cleanup;
  this_qtd_len = qtd_fill(qtd, buf, len);
  list_add_tail(&qtd->qtd_list, head);

  len -= this_qtd_len;
  buf += this_qtd_len;

  if (len <= 0)
   break;
 }





 if (urb->transfer_buffer_length != 0) {
  int one_more = 0;

  if (usb_pipecontrol(urb->pipe)) {
   one_more = 1;
   if (packet_type == IN_PID)
    packet_type = OUT_PID;
   else
    packet_type = IN_PID;
  } else if (usb_pipebulk(urb->pipe)
    && (urb->transfer_flags & URB_ZERO_PACKET)
    && !(urb->transfer_buffer_length %
       maxpacketsize)) {
   one_more = 1;
  }
  if (one_more) {
   qtd = qtd_alloc(flags, urb, packet_type);
   if (!qtd)
    goto cleanup;


   qtd_fill(qtd, ((void*)0), 0);
   list_add_tail(&qtd->qtd_list, head);
  }
 }

 return;

cleanup:
 qtd_list_free(head);
}
