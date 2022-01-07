
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pipe {int dummy; } ;


 int PID_BUF ;
 int PID_MASK ;
 int __usbhsp_pid_try_nak_if_stall (struct usbhs_pipe*) ;
 int usbhsp_pipectrl_set (struct usbhs_pipe*,int ,int ) ;

void usbhs_pipe_enable(struct usbhs_pipe *pipe)
{

 __usbhsp_pid_try_nak_if_stall(pipe);

 usbhsp_pipectrl_set(pipe, PID_MASK, PID_BUF);
}
