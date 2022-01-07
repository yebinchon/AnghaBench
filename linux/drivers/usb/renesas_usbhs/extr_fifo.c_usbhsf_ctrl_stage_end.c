
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pkt {int pipe; } ;


 int usbhs_dcp_control_transfer_done (int ) ;

__attribute__((used)) static int usbhsf_ctrl_stage_end(struct usbhs_pkt *pkt, int *is_done)
{
 usbhs_dcp_control_transfer_done(pkt->pipe);

 *is_done = 1;

 return 0;
}
