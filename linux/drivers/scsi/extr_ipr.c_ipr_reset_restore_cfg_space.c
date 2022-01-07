
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int endian_swap_reg; } ;
struct ipr_ioa_cfg {scalar_t__ sdt_state; scalar_t__ in_ioa_bringdown; scalar_t__ ioa_unit_checked; scalar_t__ sis64; TYPE_4__ regs; TYPE_6__* pdev; } ;
struct TYPE_11__ {int time_left; } ;
struct TYPE_7__ {int ioasc; } ;
struct TYPE_8__ {TYPE_1__ hdr; } ;
struct TYPE_9__ {TYPE_2__ ioasa; } ;
struct ipr_cmnd {int job_step; TYPE_5__ u; TYPE_3__ s; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_12__ {int state_saved; } ;


 int ENTER ;
 scalar_t__ GET_DUMP ;
 int IPR_DUMP_DELAY_TIMEOUT ;
 int IPR_ENDIAN_SWAP_KEY ;
 int IPR_IOASC_PCI_ACCESS_ERROR ;
 int IPR_RC_JOB_CONTINUE ;
 int IPR_RC_JOB_RETURN ;
 int IPR_WAIT_FOR_MAILBOX ;
 int LEAVE ;
 int cpu_to_be32 (int ) ;
 int ipr_dump_mailbox_wait ;
 int ipr_fail_all_ops (struct ipr_ioa_cfg*) ;
 int ipr_get_unit_check_buffer (struct ipr_ioa_cfg*) ;
 int ipr_ioa_bringdown_done ;
 int ipr_reset_alert ;
 int ipr_reset_enable_ioa ;
 int ipr_reset_get_unit_check_job ;
 int ipr_reset_start_timer (struct ipr_cmnd*,int ) ;
 scalar_t__ ipr_set_pcix_cmd_reg (struct ipr_ioa_cfg*) ;
 int pci_restore_state (TYPE_6__*) ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static int ipr_reset_restore_cfg_space(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 u32 int_reg;

 ENTER;
 ioa_cfg->pdev->state_saved = 1;
 pci_restore_state(ioa_cfg->pdev);

 if (ipr_set_pcix_cmd_reg(ioa_cfg)) {
  ipr_cmd->s.ioasa.hdr.ioasc = cpu_to_be32(IPR_IOASC_PCI_ACCESS_ERROR);
  return IPR_RC_JOB_CONTINUE;
 }

 ipr_fail_all_ops(ioa_cfg);

 if (ioa_cfg->sis64) {

  writel(IPR_ENDIAN_SWAP_KEY, ioa_cfg->regs.endian_swap_reg);
  int_reg = readl(ioa_cfg->regs.endian_swap_reg);
 }

 if (ioa_cfg->ioa_unit_checked) {
  if (ioa_cfg->sis64) {
   ipr_cmd->job_step = ipr_reset_get_unit_check_job;
   ipr_reset_start_timer(ipr_cmd, IPR_DUMP_DELAY_TIMEOUT);
   return IPR_RC_JOB_RETURN;
  } else {
   ioa_cfg->ioa_unit_checked = 0;
   ipr_get_unit_check_buffer(ioa_cfg);
   ipr_cmd->job_step = ipr_reset_alert;
   ipr_reset_start_timer(ipr_cmd, 0);
   return IPR_RC_JOB_RETURN;
  }
 }

 if (ioa_cfg->in_ioa_bringdown) {
  ipr_cmd->job_step = ipr_ioa_bringdown_done;
 } else if (ioa_cfg->sdt_state == GET_DUMP) {
  ipr_cmd->job_step = ipr_dump_mailbox_wait;
  ipr_cmd->u.time_left = IPR_WAIT_FOR_MAILBOX;
 } else {
  ipr_cmd->job_step = ipr_reset_enable_ioa;
 }

 LEAVE;
 return IPR_RC_JOB_CONTINUE;
}
