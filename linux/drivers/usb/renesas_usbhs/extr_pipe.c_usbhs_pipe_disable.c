
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_pipe {int dummy; } ;


 int PBUSY ;
 int PID_MASK ;
 int PID_NAK ;
 int __usbhsp_pid_try_nak_if_stall (struct usbhs_pipe*) ;
 int udelay (int) ;
 int usbhsp_pipectrl_get (struct usbhs_pipe*) ;
 int usbhsp_pipectrl_set (struct usbhs_pipe*,int ,int ) ;

void usbhs_pipe_disable(struct usbhs_pipe *pipe)
{
 int timeout = 1024;
 u16 val;


 __usbhsp_pid_try_nak_if_stall(pipe);

 usbhsp_pipectrl_set(pipe, PID_MASK, PID_NAK);

 do {
  val = usbhsp_pipectrl_get(pipe);
  val &= PBUSY;
  if (!val)
   break;

  udelay(10);
 } while (timeout--);
}
