
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsh_request {int pkt; } ;
struct usbhsh_hpriv {int dummy; } ;
struct usbhs_pipe {int * handler; } ;
struct urb {int transfer_buffer_length; int pipe; } ;
typedef int gfp_t ;


 int ENOMEM ;
 scalar_t__ unlikely (int) ;
 scalar_t__ usb_pipein (int ) ;
 int usbhs_dcp_status_stage_in_handler ;
 int usbhs_dcp_status_stage_out_handler ;
 int usbhs_pkt_push (struct usbhs_pipe*,int *,int ,int *,int ,int ,int) ;
 int usbhsh_queue_done ;
 struct usbhsh_request* usbhsh_ureq_alloc (struct usbhsh_hpriv*,struct urb*,int ) ;

__attribute__((used)) static int usbhsh_status_stage_packet_push(struct usbhsh_hpriv *hpriv,
         struct urb *urb,
         struct usbhs_pipe *pipe,
         gfp_t mem_flags)
{
 struct usbhsh_request *ureq;


 ureq = usbhsh_ureq_alloc(hpriv, urb, mem_flags);
 if (unlikely(!ureq))
  return -ENOMEM;

 if (usb_pipein(urb->pipe))
  pipe->handler = &usbhs_dcp_status_stage_in_handler;
 else
  pipe->handler = &usbhs_dcp_status_stage_out_handler;

 usbhs_pkt_push(pipe, &ureq->pkt,
         usbhsh_queue_done,
         ((void*)0),
         urb->transfer_buffer_length,
         0, -1);

 return 0;
}
