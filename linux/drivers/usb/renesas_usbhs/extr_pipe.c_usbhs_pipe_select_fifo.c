
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pipe {struct usbhs_fifo* fifo; } ;
struct usbhs_fifo {struct usbhs_pipe* pipe; } ;



void usbhs_pipe_select_fifo(struct usbhs_pipe *pipe, struct usbhs_fifo *fifo)
{
 if (pipe->fifo)
  pipe->fifo->pipe = ((void*)0);

 pipe->fifo = fifo;

 if (fifo)
  fifo->pipe = pipe;
}
