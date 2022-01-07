
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
struct ufs_hba {int dev_quirks; int quirks; int dev; int caps; int capabilities; int req_abort_count; int eh_flags; TYPE_2__ clk_gating; TYPE_1__* host; int auto_bkops_enabled; int is_sys_suspended; int pm_op_in_progress; int uic_link_state; int curr_dev_pwr_mode; int saved_uic_err; int saved_err; int outstanding_tasks; int outstanding_reqs; int lrb_in_use; int ufshcd_state; } ;
struct TYPE_3__ {int host_self_blocked; } ;


 int dev_err (int ,char*,int ,...) ;

__attribute__((used)) static void ufshcd_print_host_state(struct ufs_hba *hba)
{
 dev_err(hba->dev, "UFS Host state=%d\n", hba->ufshcd_state);
 dev_err(hba->dev, "lrb in use=0x%lx, outstanding reqs=0x%lx tasks=0x%lx\n",
  hba->lrb_in_use, hba->outstanding_reqs, hba->outstanding_tasks);
 dev_err(hba->dev, "saved_err=0x%x, saved_uic_err=0x%x\n",
  hba->saved_err, hba->saved_uic_err);
 dev_err(hba->dev, "Device power mode=%d, UIC link state=%d\n",
  hba->curr_dev_pwr_mode, hba->uic_link_state);
 dev_err(hba->dev, "PM in progress=%d, sys. suspended=%d\n",
  hba->pm_op_in_progress, hba->is_sys_suspended);
 dev_err(hba->dev, "Auto BKOPS=%d, Host self-block=%d\n",
  hba->auto_bkops_enabled, hba->host->host_self_blocked);
 dev_err(hba->dev, "Clk gate=%d\n", hba->clk_gating.state);
 dev_err(hba->dev, "error handling flags=0x%x, req. abort count=%d\n",
  hba->eh_flags, hba->req_abort_count);
 dev_err(hba->dev, "Host capabilities=0x%x, caps=0x%x\n",
  hba->capabilities, hba->caps);
 dev_err(hba->dev, "quirks=0x%x, dev. quirks=0x%x\n", hba->quirks,
  hba->dev_quirks);
}
