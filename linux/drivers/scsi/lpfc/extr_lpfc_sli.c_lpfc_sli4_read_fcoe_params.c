
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_12__ {scalar_t__* mb_words; } ;
struct lpfc_mqe {TYPE_4__ un; } ;
struct lpfc_hba {int mbox_mem_pool; int * fc_map; scalar_t__ valid_vlan; } ;
struct lpfc_dmabuf {int phys; int virt; } ;
struct TYPE_11__ {int trailer; int mcqe_tag1; int mcqe_tag0; int word0; } ;
struct TYPE_9__ {struct lpfc_mqe mqe; } ;
struct TYPE_13__ {TYPE_3__ mcqe; TYPE_2__* vport; scalar_t__ ctx_buf; TYPE_1__ u; } ;
struct TYPE_10__ {int vpi; } ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 scalar_t__ DMP_RGN23_SIZE ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_INFO ;
 int LOG_MBOX ;
 int LOG_SLI ;
 int LPFC_FCOE_FCF_MAP0 ;
 int LPFC_FCOE_FCF_MAP1 ;
 int LPFC_FCOE_FCF_MAP2 ;
 int MBX_POLL ;
 int bf_get (int ,struct lpfc_mqe*) ;
 int kfree (struct lpfc_dmabuf*) ;
 int lpfc_mbuf_free (struct lpfc_hba*,int ,int ) ;
 int lpfc_mqe_command ;
 int lpfc_mqe_status ;
 int lpfc_parse_fcoe_conf (struct lpfc_hba*,int ,scalar_t__) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 scalar_t__ lpfc_sli4_dump_cfg_rg23 (struct lpfc_hba*,TYPE_5__*) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_5__*,int ) ;
 scalar_t__ mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_5__*,int ) ;

__attribute__((used)) static int
lpfc_sli4_read_fcoe_params(struct lpfc_hba *phba)
{
 LPFC_MBOXQ_t *mboxq;
 struct lpfc_dmabuf *mp;
 struct lpfc_mqe *mqe;
 uint32_t data_length;
 int rc;


 phba->valid_vlan = 0;
 phba->fc_map[0] = LPFC_FCOE_FCF_MAP0;
 phba->fc_map[1] = LPFC_FCOE_FCF_MAP1;
 phba->fc_map[2] = LPFC_FCOE_FCF_MAP2;

 mboxq = (LPFC_MBOXQ_t *)mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!mboxq)
  return -ENOMEM;

 mqe = &mboxq->u.mqe;
 if (lpfc_sli4_dump_cfg_rg23(phba, mboxq)) {
  rc = -ENOMEM;
  goto out_free_mboxq;
 }

 mp = (struct lpfc_dmabuf *)mboxq->ctx_buf;
 rc = lpfc_sli_issue_mbox(phba, mboxq, MBX_POLL);

 lpfc_printf_log(phba, KERN_INFO, LOG_MBOX | LOG_SLI,
   "(%d):2571 Mailbox cmd x%x Status x%x "
   "Data: x%x x%x x%x x%x x%x x%x x%x x%x x%x "
   "x%x x%x x%x x%x x%x x%x x%x x%x x%x "
   "CQ: x%x x%x x%x x%x\n",
   mboxq->vport ? mboxq->vport->vpi : 0,
   bf_get(lpfc_mqe_command, mqe),
   bf_get(lpfc_mqe_status, mqe),
   mqe->un.mb_words[0], mqe->un.mb_words[1],
   mqe->un.mb_words[2], mqe->un.mb_words[3],
   mqe->un.mb_words[4], mqe->un.mb_words[5],
   mqe->un.mb_words[6], mqe->un.mb_words[7],
   mqe->un.mb_words[8], mqe->un.mb_words[9],
   mqe->un.mb_words[10], mqe->un.mb_words[11],
   mqe->un.mb_words[12], mqe->un.mb_words[13],
   mqe->un.mb_words[14], mqe->un.mb_words[15],
   mqe->un.mb_words[16], mqe->un.mb_words[50],
   mboxq->mcqe.word0,
   mboxq->mcqe.mcqe_tag0, mboxq->mcqe.mcqe_tag1,
   mboxq->mcqe.trailer);

 if (rc) {
  lpfc_mbuf_free(phba, mp->virt, mp->phys);
  kfree(mp);
  rc = -EIO;
  goto out_free_mboxq;
 }
 data_length = mqe->un.mb_words[5];
 if (data_length > DMP_RGN23_SIZE) {
  lpfc_mbuf_free(phba, mp->virt, mp->phys);
  kfree(mp);
  rc = -EIO;
  goto out_free_mboxq;
 }

 lpfc_parse_fcoe_conf(phba, mp->virt, data_length);
 lpfc_mbuf_free(phba, mp->virt, mp->phys);
 kfree(mp);
 rc = 0;

out_free_mboxq:
 mempool_free(mboxq, phba->mbox_mem_pool);
 return rc;
}
