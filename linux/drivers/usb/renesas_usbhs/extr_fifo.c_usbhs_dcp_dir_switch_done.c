
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pkt {int length; int actual; int * handler; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int dummy; } ;


 int usbhs_dcp_status_stage_in_handler ;
 int usbhsf_rx_irq_ctrl (struct usbhs_pipe*,int ) ;
 int usbhsf_tx_irq_ctrl (struct usbhs_pipe*,int ) ;

__attribute__((used)) static int usbhs_dcp_dir_switch_done(struct usbhs_pkt *pkt, int *is_done)
{
 struct usbhs_pipe *pipe = pkt->pipe;

 if (pkt->handler == &usbhs_dcp_status_stage_in_handler)
  usbhsf_tx_irq_ctrl(pipe, 0);
 else
  usbhsf_rx_irq_ctrl(pipe, 0);

 pkt->actual = pkt->length;
 *is_done = 1;

 return 0;
}
