
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


union lpfc_sli4_cfg_shdr {int response; } ;
typedef scalar_t__ uint32_t ;
struct lpfc_ras_fwlog {int ras_hwsupport; int ras_active; } ;
struct lpfc_hba {int mbox_mem_pool; struct lpfc_ras_fwlog ras_fwlog; } ;
struct TYPE_10__ {int cfg_shdr; } ;
struct TYPE_11__ {TYPE_1__ header; } ;
struct TYPE_12__ {TYPE_2__ ras_fwlog; } ;
struct TYPE_13__ {TYPE_3__ un; } ;
struct TYPE_15__ {scalar_t__ mbxStatus; } ;
struct TYPE_14__ {TYPE_4__ mqe; TYPE_6__ mb; } ;
struct TYPE_16__ {TYPE_5__ u; } ;
typedef TYPE_6__ MAILBOX_t ;
typedef TYPE_7__ LPFC_MBOXQ_t ;


 int KERN_ERR ;
 int LOG_MBOX ;
 scalar_t__ MBX_SUCCESS ;
 scalar_t__ bf_get (int ,int *) ;
 int lpfc_mbox_hdr_add_status ;
 int lpfc_mbox_hdr_status ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int lpfc_sli4_ras_dma_free (struct lpfc_hba*) ;
 int mempool_free (TYPE_7__*,int ) ;

__attribute__((used)) static void
lpfc_sli4_ras_mbox_cmpl(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 MAILBOX_t *mb;
 union lpfc_sli4_cfg_shdr *shdr;
 uint32_t shdr_status, shdr_add_status;
 struct lpfc_ras_fwlog *ras_fwlog = &phba->ras_fwlog;

 mb = &pmb->u.mb;

 shdr = (union lpfc_sli4_cfg_shdr *)
  &pmb->u.mqe.un.ras_fwlog.header.cfg_shdr;
 shdr_status = bf_get(lpfc_mbox_hdr_status, &shdr->response);
 shdr_add_status = bf_get(lpfc_mbox_hdr_add_status, &shdr->response);

 if (mb->mbxStatus != MBX_SUCCESS || shdr_status) {
  lpfc_printf_log(phba, KERN_ERR, LOG_MBOX,
    "6188 FW LOG mailbox "
    "completed with status x%x add_status x%x,"
    " mbx status x%x\n",
    shdr_status, shdr_add_status, mb->mbxStatus);

  ras_fwlog->ras_hwsupport = 0;
  goto disable_ras;
 }

 ras_fwlog->ras_active = 1;
 mempool_free(pmb, phba->mbox_mem_pool);

 return;

disable_ras:

 lpfc_sli4_ras_dma_free(phba);
 mempool_free(pmb, phba->mbox_mem_pool);
}
