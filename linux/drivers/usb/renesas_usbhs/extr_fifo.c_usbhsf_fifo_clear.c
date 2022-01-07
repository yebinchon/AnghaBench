
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct usbhs_fifo {int ctr; } ;


 int BCLR ;
 int usbhs_pipe_is_accessible (struct usbhs_pipe*) ;
 int usbhs_pipe_is_dcp (struct usbhs_pipe*) ;
 scalar_t__ usbhs_pipe_is_dir_in (struct usbhs_pipe*) ;
 struct usbhs_priv* usbhs_pipe_to_priv (struct usbhs_pipe*) ;
 int usbhs_write (struct usbhs_priv*,int ,int ) ;
 int usbhsf_fifo_barrier (struct usbhs_priv*,struct usbhs_fifo*) ;

__attribute__((used)) static void usbhsf_fifo_clear(struct usbhs_pipe *pipe,
         struct usbhs_fifo *fifo)
{
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pipe);
 int ret = 0;

 if (!usbhs_pipe_is_dcp(pipe)) {





  if (usbhs_pipe_is_dir_in(pipe))
   ret = usbhs_pipe_is_accessible(pipe);
  if (!ret)
   ret = usbhsf_fifo_barrier(priv, fifo);
 }





 if (!ret)
  usbhs_write(priv, fifo->ctr, BCLR);
}
