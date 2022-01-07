
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pipe {int dummy; } ;


 int IS_RUNNING ;
 int usbhsp_flags_clr (struct usbhs_pipe*,int ) ;
 int usbhsp_flags_set (struct usbhs_pipe*,int ) ;

void usbhs_pipe_running(struct usbhs_pipe *pipe, int running)
{
 if (running)
  usbhsp_flags_set(pipe, IS_RUNNING);
 else
  usbhsp_flags_clr(pipe, IS_RUNNING);
}
