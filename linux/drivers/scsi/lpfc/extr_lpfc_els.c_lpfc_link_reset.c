
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_7__ {int sli_flag; } ;
struct lpfc_hba {scalar_t__ sli_rev; int mbox_mem_pool; int cfg_link_speed; int cfg_topology; int hbalock; int HCregaddr; TYPE_1__ sli; } ;
struct TYPE_8__ {struct lpfc_vport* vport; int mbox_cmpl; } ;
typedef TYPE_2__ LPFC_MBOXQ_t ;


 int GFP_KERNEL ;
 int HC_LAINT_ENA ;
 int KERN_ERR ;
 int LOG_ELS ;
 int LOG_MBOX ;
 int LPFC_PROCESS_LA ;
 scalar_t__ LPFC_SLI_REV3 ;
 int MBX_BUSY ;
 int MBX_NOWAIT ;
 int MBX_SUCCESS ;
 int lpfc_init_link (struct lpfc_hba*,TYPE_2__*,int ,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*) ;
 int lpfc_sli_def_mbox_cmpl ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_2__*,int ) ;
 TYPE_2__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_2__*,int ) ;
 int readl (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int ,int ) ;

int
lpfc_link_reset(struct lpfc_vport *vport)
{
 struct lpfc_hba *phba = vport->phba;
 LPFC_MBOXQ_t *mbox;
 uint32_t control;
 int rc;

 lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
    "2851 Attempt link reset\n");
 mbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!mbox) {
  lpfc_printf_log(phba, KERN_ERR, LOG_MBOX,
    "2852 Failed to allocate mbox memory");
  return 1;
 }


 if (phba->sli_rev <= LPFC_SLI_REV3) {
  spin_lock_irq(&phba->hbalock);
  phba->sli.sli_flag |= LPFC_PROCESS_LA;
  control = readl(phba->HCregaddr);
  control |= HC_LAINT_ENA;
  writel(control, phba->HCregaddr);
  readl(phba->HCregaddr);
  spin_unlock_irq(&phba->hbalock);
 }

 lpfc_init_link(phba, mbox, phba->cfg_topology,
         phba->cfg_link_speed);
 mbox->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
 mbox->vport = vport;
 rc = lpfc_sli_issue_mbox(phba, mbox, MBX_NOWAIT);
 if ((rc != MBX_BUSY) && (rc != MBX_SUCCESS)) {
  lpfc_printf_log(phba, KERN_ERR, LOG_MBOX,
    "2853 Failed to issue INIT_LINK "
    "mbox command, rc:x%x\n", rc);
  mempool_free(mbox, phba->mbox_mem_pool);
  return 1;
 }

 return 0;
}
