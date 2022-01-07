
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct lpfc_nodelist {int vport; int nlp_usg_map; int kref; int nlp_flag; int nlp_DID; int nlp_rpi; } ;
struct lpfc_hba {int mbox_mem_pool; } ;
struct lpfc_dmabuf {int phys; int virt; } ;
struct TYPE_4__ {int * ctx_ndlp; int * ctx_buf; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int KERN_INFO ;
 int LOG_NODE ;
 scalar_t__ NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int kfree (struct lpfc_dmabuf*) ;
 int kref_read (int *) ;
 int lpfc_drop_node (int ,struct lpfc_nodelist*) ;
 int lpfc_mbuf_free (struct lpfc_hba*,int ,int ) ;
 int lpfc_nlp_not_used (struct lpfc_nodelist*) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_printf_vlog (int ,int ,int ,char*,int ,int ,int ,int ,int ,struct lpfc_nodelist*) ;
 int mempool_free (TYPE_1__*,int ) ;

void
lpfc_mbx_cmpl_dflt_rpi(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 struct lpfc_dmabuf *mp = (struct lpfc_dmabuf *)(pmb->ctx_buf);
 struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *)pmb->ctx_ndlp;

 pmb->ctx_buf = ((void*)0);
 pmb->ctx_ndlp = ((void*)0);

 lpfc_mbuf_free(phba, mp->virt, mp->phys);
 kfree(mp);
 mempool_free(pmb, phba->mbox_mem_pool);
 if (ndlp) {
  lpfc_printf_vlog(ndlp->vport, KERN_INFO, LOG_NODE,
     "0006 rpi%x DID:%x flg:%x %d map:%x x%px\n",
     ndlp->nlp_rpi, ndlp->nlp_DID, ndlp->nlp_flag,
     kref_read(&ndlp->kref),
     ndlp->nlp_usg_map, ndlp);
  if (NLP_CHK_NODE_ACT(ndlp)) {
   lpfc_nlp_put(ndlp);




   lpfc_nlp_not_used(ndlp);
  } else {
   lpfc_drop_node(ndlp->vport, ndlp);
  }
 }

 return;
}
