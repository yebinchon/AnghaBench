
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int set_uproc_interrupt_reg32; } ;
struct ipr_ioa_cfg {scalar_t__ cfg_locked; int pdev; TYPE_2__ regs; TYPE_1__* ipr_chip; } ;
struct TYPE_8__ {int ioasc; } ;
struct TYPE_9__ {TYPE_3__ hdr; } ;
struct TYPE_10__ {TYPE_4__ ioasa; } ;
struct ipr_cmnd {TYPE_5__ s; struct ipr_ioa_cfg* ioa_cfg; int job_step; } ;
struct TYPE_6__ {scalar_t__ bist_method; } ;


 int ENTER ;
 int IPR_IOASC_PCI_ACCESS_ERROR ;
 scalar_t__ IPR_MMIO ;
 int IPR_RC_JOB_CONTINUE ;
 int IPR_RC_JOB_RETURN ;
 int IPR_UPROCI_SIS64_START_BIST ;
 int IPR_WAIT_FOR_BIST_TIMEOUT ;
 int LEAVE ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_BIST ;
 int PCI_BIST_START ;
 int cpu_to_be32 (int ) ;
 int ipr_reset_bist_done ;
 int ipr_reset_start_timer (struct ipr_cmnd*,int ) ;
 int pci_cfg_access_unlock (int ) ;
 int pci_write_config_byte (int ,int ,int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static int ipr_reset_start_bist(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 int rc = PCIBIOS_SUCCESSFUL;

 ENTER;
 if (ioa_cfg->ipr_chip->bist_method == IPR_MMIO)
  writel(IPR_UPROCI_SIS64_START_BIST,
         ioa_cfg->regs.set_uproc_interrupt_reg32);
 else
  rc = pci_write_config_byte(ioa_cfg->pdev, PCI_BIST, PCI_BIST_START);

 if (rc == PCIBIOS_SUCCESSFUL) {
  ipr_cmd->job_step = ipr_reset_bist_done;
  ipr_reset_start_timer(ipr_cmd, IPR_WAIT_FOR_BIST_TIMEOUT);
  rc = IPR_RC_JOB_RETURN;
 } else {
  if (ioa_cfg->cfg_locked)
   pci_cfg_access_unlock(ipr_cmd->ioa_cfg->pdev);
  ioa_cfg->cfg_locked = 0;
  ipr_cmd->s.ioasa.hdr.ioasc = cpu_to_be32(IPR_IOASC_PCI_ACCESS_ERROR);
  rc = IPR_RC_JOB_CONTINUE;
 }

 LEAVE;
 return rc;
}
