
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct usbhs_fifo {int dummy; } ;


 struct usbhs_priv* usbhs_pipe_to_priv (struct usbhs_pipe*) ;
 int usbhsf_fifo_clear (struct usbhs_pipe*,struct usbhs_fifo*) ;
 scalar_t__ usbhsf_fifo_select (struct usbhs_pipe*,struct usbhs_fifo*,int) ;
 int usbhsf_fifo_unselect (struct usbhs_pipe*,struct usbhs_fifo*) ;
 struct usbhs_fifo* usbhsf_get_cfifo (struct usbhs_priv*) ;

void usbhs_fifo_clear_dcp(struct usbhs_pipe *pipe)
{
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pipe);
 struct usbhs_fifo *fifo = usbhsf_get_cfifo(priv);


 if (usbhsf_fifo_select(pipe, fifo, 1) < 0)
  return;
 usbhsf_fifo_clear(pipe, fifo);
 usbhsf_fifo_unselect(pipe, fifo);


 if (usbhsf_fifo_select(pipe, fifo, 0) < 0)
  return;
 usbhsf_fifo_clear(pipe, fifo);
 usbhsf_fifo_unselect(pipe, fifo);
}
