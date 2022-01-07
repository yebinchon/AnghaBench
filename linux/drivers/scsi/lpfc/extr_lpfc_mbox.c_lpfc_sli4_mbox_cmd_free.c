
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


typedef size_t uint32_t ;
struct TYPE_10__ {int cfg_mhdr; } ;
struct lpfc_mbx_sli4_config {TYPE_4__ header; } ;
struct lpfc_mbx_sge {int pa_lo; int pa_hi; } ;
struct lpfc_hba {int mbox_mem_pool; TYPE_5__* pcidev; } ;
struct TYPE_7__ {struct lpfc_mbx_sli4_config sli4_config; } ;
struct TYPE_8__ {TYPE_1__ un; } ;
struct TYPE_9__ {TYPE_2__ mqe; } ;
struct lpfcMboxq {TYPE_6__* sge_array; TYPE_3__ u; } ;
typedef int dma_addr_t ;
struct TYPE_12__ {int * addr; } ;
struct TYPE_11__ {int dev; } ;


 int SLI4_PAGE_SIZE ;
 size_t bf_get (int ,int *) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int getPaddr (int ,int ) ;
 int kfree (TYPE_6__*) ;
 int lpfc_mbox_hdr_emb ;
 int lpfc_mbox_hdr_sge_cnt ;
 int lpfc_sli4_mbx_sge_get (struct lpfcMboxq*,size_t,struct lpfc_mbx_sge*) ;
 int mempool_free (struct lpfcMboxq*,int ) ;
 scalar_t__ unlikely (int) ;

void
lpfc_sli4_mbox_cmd_free(struct lpfc_hba *phba, struct lpfcMboxq *mbox)
{
 struct lpfc_mbx_sli4_config *sli4_cfg;
 struct lpfc_mbx_sge sge;
 dma_addr_t phyaddr;
 uint32_t sgecount, sgentry;

 sli4_cfg = &mbox->u.mqe.un.sli4_config;


 if (bf_get(lpfc_mbox_hdr_emb, &sli4_cfg->header.cfg_mhdr)) {
  mempool_free(mbox, phba->mbox_mem_pool);
  return;
 }


 sgecount = bf_get(lpfc_mbox_hdr_sge_cnt, &sli4_cfg->header.cfg_mhdr);

 if (unlikely(!mbox->sge_array)) {
  mempool_free(mbox, phba->mbox_mem_pool);
  return;
 }

 for (sgentry = 0; sgentry < sgecount; sgentry++) {
  lpfc_sli4_mbx_sge_get(mbox, sgentry, &sge);
  phyaddr = getPaddr(sge.pa_hi, sge.pa_lo);
  dma_free_coherent(&phba->pcidev->dev, SLI4_PAGE_SIZE,
      mbox->sge_array->addr[sgentry], phyaddr);
 }

 kfree(mbox->sge_array);

 mempool_free(mbox, phba->mbox_mem_pool);
}
