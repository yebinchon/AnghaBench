
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_pipe {int dummy; } ;



 int PID_MASK ;

 int PID_STALL10 ;
 int PID_STALL11 ;
 int usbhsp_pipectrl_get (struct usbhs_pipe*) ;
 int usbhsp_pipectrl_set (struct usbhs_pipe*,int,int ) ;

void usbhs_pipe_stall(struct usbhs_pipe *pipe)
{
 u16 pid = usbhsp_pipectrl_get(pipe);

 pid &= PID_MASK;





 switch (pid) {
 case 128:
  usbhsp_pipectrl_set(pipe, PID_MASK, PID_STALL10);
  break;
 case 129:
  usbhsp_pipectrl_set(pipe, PID_MASK, PID_STALL11);
  break;
 }
}
