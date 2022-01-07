
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhs_pkt {int trans; scalar_t__ actual; scalar_t__ length; TYPE_1__* handler; int zero; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int fifo; } ;
struct TYPE_2__ {int (* try_run ) (struct usbhs_pkt*,int*) ;} ;


 int stub1 (struct usbhs_pkt*,int*) ;
 TYPE_1__ usbhs_fifo_pio_push_handler ;
 int usbhs_pipe_get_maxpacket (struct usbhs_pipe*) ;
 int usbhs_pipe_running (struct usbhs_pipe*,int) ;
 int usbhsf_dma_stop (struct usbhs_pipe*,int ) ;
 int usbhsf_dma_unmap (struct usbhs_pkt*) ;
 int usbhsf_fifo_unselect (struct usbhs_pipe*,int ) ;

__attribute__((used)) static int usbhsf_dma_push_done(struct usbhs_pkt *pkt, int *is_done)
{
 struct usbhs_pipe *pipe = pkt->pipe;
 int is_short = pkt->trans % usbhs_pipe_get_maxpacket(pipe);

 pkt->actual += pkt->trans;

 if (pkt->actual < pkt->length)
  *is_done = 0;
 else if (is_short)
  *is_done = 1;
 else
  *is_done = !pkt->zero;

 usbhs_pipe_running(pipe, !*is_done);

 usbhsf_dma_stop(pipe, pipe->fifo);
 usbhsf_dma_unmap(pkt);
 usbhsf_fifo_unselect(pipe, pipe->fifo);

 if (!*is_done) {

  pkt->handler = &usbhs_fifo_pio_push_handler;
  return pkt->handler->try_run(pkt, is_done);
 }

 return 0;
}
