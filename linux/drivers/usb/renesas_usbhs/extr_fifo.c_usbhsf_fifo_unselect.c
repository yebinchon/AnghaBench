
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct usbhs_fifo {int sel; } ;


 int usbhs_pipe_select_fifo (struct usbhs_pipe*,int *) ;
 struct usbhs_priv* usbhs_pipe_to_priv (struct usbhs_pipe*) ;
 int usbhs_write (struct usbhs_priv*,int ,int ) ;

__attribute__((used)) static void usbhsf_fifo_unselect(struct usbhs_pipe *pipe,
     struct usbhs_fifo *fifo)
{
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pipe);

 usbhs_pipe_select_fifo(pipe, ((void*)0));
 usbhs_write(priv, fifo->sel, 0);
}
