
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {TYPE_1__* handler; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int dummy; } ;
struct usbhs_fifo {int dummy; } ;
struct TYPE_2__ {int (* prepare ) (struct usbhs_pkt*,int*) ;} ;


 int stub1 (struct usbhs_pkt*,int*) ;
 TYPE_1__ usbhs_fifo_pio_pop_handler ;
 int usbhs_pipe_disable (struct usbhs_pipe*) ;
 scalar_t__ usbhs_pipe_is_busy (struct usbhs_pipe*) ;
 int usbhs_pipe_sequence_data1 (struct usbhs_pipe*) ;
 struct usbhs_priv* usbhs_pipe_to_priv (struct usbhs_pipe*) ;
 int usbhsf_fifo_clear (struct usbhs_pipe*,struct usbhs_fifo*) ;
 int usbhsf_fifo_select (struct usbhs_pipe*,struct usbhs_fifo*,int ) ;
 int usbhsf_fifo_unselect (struct usbhs_pipe*,struct usbhs_fifo*) ;
 struct usbhs_fifo* usbhsf_get_cfifo (struct usbhs_priv*) ;

__attribute__((used)) static int usbhsf_dcp_data_stage_prepare_pop(struct usbhs_pkt *pkt,
          int *is_done)
{
 struct usbhs_pipe *pipe = pkt->pipe;
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pipe);
 struct usbhs_fifo *fifo = usbhsf_get_cfifo(priv);

 if (usbhs_pipe_is_busy(pipe))
  return 0;







 usbhs_pipe_disable(pipe);

 usbhs_pipe_sequence_data1(pipe);

 usbhsf_fifo_select(pipe, fifo, 0);
 usbhsf_fifo_clear(pipe, fifo);
 usbhsf_fifo_unselect(pipe, fifo);




 pkt->handler = &usbhs_fifo_pio_pop_handler;

 return pkt->handler->prepare(pkt, is_done);
}
