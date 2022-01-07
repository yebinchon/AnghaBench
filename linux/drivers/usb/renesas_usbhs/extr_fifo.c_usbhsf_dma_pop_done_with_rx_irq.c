
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pkt {scalar_t__ actual; int trans; scalar_t__ length; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int fifo; } ;


 int usbhs_pipe_get_maxpacket (struct usbhs_pipe*) ;
 int usbhs_pipe_running (struct usbhs_pipe*,int ) ;
 int usbhsf_dma_stop (struct usbhs_pipe*,int ) ;
 int usbhsf_dma_unmap (struct usbhs_pkt*) ;
 int usbhsf_fifo_unselect (struct usbhs_pipe*,int ) ;
 int usbhsf_prepare_pop (struct usbhs_pkt*,int*) ;

__attribute__((used)) static int usbhsf_dma_pop_done_with_rx_irq(struct usbhs_pkt *pkt, int *is_done)
{
 struct usbhs_pipe *pipe = pkt->pipe;
 int maxp = usbhs_pipe_get_maxpacket(pipe);

 usbhsf_dma_stop(pipe, pipe->fifo);
 usbhsf_dma_unmap(pkt);
 usbhsf_fifo_unselect(pipe, pipe->fifo);

 pkt->actual += pkt->trans;

 if ((pkt->actual == pkt->length) ||
     (pkt->trans < maxp)) {
  *is_done = 1;
  usbhs_pipe_running(pipe, 0);
 } else {

  usbhs_pipe_running(pipe, 0);
  usbhsf_prepare_pop(pkt, is_done);
 }

 return 0;
}
