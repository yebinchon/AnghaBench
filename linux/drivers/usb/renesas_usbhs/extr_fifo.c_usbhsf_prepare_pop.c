
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {int sequence; int length; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int dummy; } ;
struct usbhs_fifo {int dummy; } ;


 int usbhs_pipe_data_sequence (struct usbhs_pipe*,int) ;
 int usbhs_pipe_enable (struct usbhs_pipe*) ;
 scalar_t__ usbhs_pipe_is_busy (struct usbhs_pipe*) ;
 scalar_t__ usbhs_pipe_is_dcp (struct usbhs_pipe*) ;
 scalar_t__ usbhs_pipe_is_running (struct usbhs_pipe*) ;
 int usbhs_pipe_running (struct usbhs_pipe*,int) ;
 int usbhs_pipe_set_trans_count_if_bulk (struct usbhs_pipe*,int ) ;
 struct usbhs_priv* usbhs_pipe_to_priv (struct usbhs_pipe*) ;
 int usbhsf_fifo_clear (struct usbhs_pipe*,struct usbhs_fifo*) ;
 struct usbhs_fifo* usbhsf_get_cfifo (struct usbhs_priv*) ;
 int usbhsf_rx_irq_ctrl (struct usbhs_pipe*,int) ;

__attribute__((used)) static int usbhsf_prepare_pop(struct usbhs_pkt *pkt, int *is_done)
{
 struct usbhs_pipe *pipe = pkt->pipe;
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pipe);
 struct usbhs_fifo *fifo = usbhsf_get_cfifo(priv);

 if (usbhs_pipe_is_busy(pipe))
  return 0;

 if (usbhs_pipe_is_running(pipe))
  return 0;




 usbhs_pipe_data_sequence(pipe, pkt->sequence);
 pkt->sequence = -1;

 if (usbhs_pipe_is_dcp(pipe))
  usbhsf_fifo_clear(pipe, fifo);

 usbhs_pipe_set_trans_count_if_bulk(pipe, pkt->length);
 usbhs_pipe_enable(pipe);
 usbhs_pipe_running(pipe, 1);
 usbhsf_rx_irq_ctrl(pipe, 1);

 return 0;
}
