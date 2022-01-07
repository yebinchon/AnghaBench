
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pipe {int dummy; } ;


 int usbhsp_put_pipe (struct usbhs_pipe*) ;

void usbhs_pipe_free(struct usbhs_pipe *pipe)
{
 usbhsp_put_pipe(pipe);
}
