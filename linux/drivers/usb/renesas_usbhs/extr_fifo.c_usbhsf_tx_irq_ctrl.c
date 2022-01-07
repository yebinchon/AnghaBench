
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pipe {int dummy; } ;


 scalar_t__ usbhs_pipe_is_dcp (struct usbhs_pipe*) ;
 int usbhsf_irq_empty_ctrl (struct usbhs_pipe*,int) ;
 int usbhsf_irq_ready_ctrl (struct usbhs_pipe*,int) ;

__attribute__((used)) static void usbhsf_tx_irq_ctrl(struct usbhs_pipe *pipe, int enable)
{
 if (usbhs_pipe_is_dcp(pipe))
  usbhsf_irq_empty_ctrl(pipe, enable);
 else
  usbhsf_irq_ready_ctrl(pipe, enable);
}
