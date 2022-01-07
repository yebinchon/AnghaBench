
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct lpfc_hba {int mbox_mem_pool; } ;
struct TYPE_9__ {int set_trunk_mode; } ;
struct TYPE_10__ {TYPE_1__ un; } ;
struct TYPE_11__ {TYPE_2__ mqe; } ;
struct TYPE_12__ {TYPE_3__ u; } ;
typedef TYPE_4__ LPFC_MBOXQ_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int LOG_MBOX ;
 int LPFC_MBOX_OPCODE_FCOE_FC_SET_TRUNK_MODE ;
 int LPFC_MBOX_SUBSYSTEM_FCOE ;
 int LPFC_SLI4_MBX_EMBED ;
 int MBX_POLL ;
 int MBX_TIMEOUT ;
 int bf_set (int ,int *,unsigned long) ;
 int kstrtoul (char*,int ,unsigned long*) ;
 int lpfc_mbx_set_trunk_mode ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 int lpfc_sli4_config (struct lpfc_hba*,TYPE_4__*,int ,int ,int,int ) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_4__*,int ) ;
 TYPE_4__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_4__*,int ) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int
lpfc_set_trunking(struct lpfc_hba *phba, char *buff_out)
{
 LPFC_MBOXQ_t *mbox = ((void*)0);
 unsigned long val = 0;
 char *pval = 0;
 int rc = 0;

 if (!strncmp("enable", buff_out,
     strlen("enable"))) {
  pval = buff_out + strlen("enable") + 1;
  rc = kstrtoul(pval, 0, &val);
  if (rc)
   return rc;
 } else if (!strncmp("disable", buff_out,
     strlen("disable"))) {
  val = 0;
 } else {
  return -EINVAL;
 }

 switch (val) {
 case 0:
  val = 0x0;
  break;
 case 2:
  val = 0x1;
  break;
 case 4:
  val = 0x2;
  break;
 default:
  return -EINVAL;
 }

 lpfc_printf_log(phba, KERN_ERR, LOG_MBOX,
   "0070 Set trunk mode with val %ld ", val);

 mbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!mbox)
  return -ENOMEM;

 lpfc_sli4_config(phba, mbox, LPFC_MBOX_SUBSYSTEM_FCOE,
    LPFC_MBOX_OPCODE_FCOE_FC_SET_TRUNK_MODE,
    12, LPFC_SLI4_MBX_EMBED);

 bf_set(lpfc_mbx_set_trunk_mode,
        &mbox->u.mqe.un.set_trunk_mode,
        val);
 rc = lpfc_sli_issue_mbox(phba, mbox, MBX_POLL);
 if (rc)
  lpfc_printf_log(phba, KERN_ERR, LOG_MBOX,
    "0071 Set trunk mode failed with status: %d",
    rc);
 if (rc != MBX_TIMEOUT)
  mempool_free(mbox, phba->mbox_mem_pool);

 return 0;
}
