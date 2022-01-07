
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsh_request {int pkt; } ;
struct usbhsh_hpriv {int dummy; } ;
struct usbhs_pipe {int * handler; } ;
struct urb {int transfer_flags; int transfer_buffer_length; int transfer_buffer; int pipe; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int URB_ZERO_PACKET ;
 scalar_t__ unlikely (int) ;
 scalar_t__ usb_pipein (int ) ;
 int usbhs_dcp_data_stage_in_handler ;
 int usbhs_dcp_data_stage_out_handler ;
 int usbhs_pkt_push (struct usbhs_pipe*,int *,int ,int ,int ,int,int) ;
 int usbhsh_data_stage_packet_done ;
 struct usbhsh_request* usbhsh_ureq_alloc (struct usbhsh_hpriv*,struct urb*,int ) ;

__attribute__((used)) static int usbhsh_data_stage_packet_push(struct usbhsh_hpriv *hpriv,
      struct urb *urb,
      struct usbhs_pipe *pipe,
      gfp_t mem_flags)

{
 struct usbhsh_request *ureq;


 ureq = usbhsh_ureq_alloc(hpriv, urb, mem_flags);
 if (unlikely(!ureq))
  return -ENOMEM;

 if (usb_pipein(urb->pipe))
  pipe->handler = &usbhs_dcp_data_stage_in_handler;
 else
  pipe->handler = &usbhs_dcp_data_stage_out_handler;

 usbhs_pkt_push(pipe, &ureq->pkt,
         usbhsh_data_stage_packet_done,
         urb->transfer_buffer,
         urb->transfer_buffer_length,
         (urb->transfer_flags & URB_ZERO_PACKET),
         -1);

 return 0;
}
