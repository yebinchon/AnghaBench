
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pipe {int dummy; } ;


 int IS_RUNNING ;
 int usbhsp_flags_has (struct usbhs_pipe*,int ) ;

int usbhs_pipe_is_running(struct usbhs_pipe *pipe)
{
 return usbhsp_flags_has(pipe, IS_RUNNING);
}
