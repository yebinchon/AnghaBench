
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pipe {int dummy; } ;


 int usbhsf_irq_ready_ctrl (struct usbhs_pipe*,int) ;

__attribute__((used)) static void usbhsf_rx_irq_ctrl(struct usbhs_pipe *pipe, int enable)
{
 usbhsf_irq_ready_ctrl(pipe, enable);
}
