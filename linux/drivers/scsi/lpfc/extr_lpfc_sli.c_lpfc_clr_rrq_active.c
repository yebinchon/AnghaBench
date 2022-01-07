
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct lpfc_nodelist {int active_rrqs_xri_bitmap; } ;
struct lpfc_node_rrq {scalar_t__ rrq_stop_time; scalar_t__ xritag; scalar_t__ send_rrq; struct lpfc_nodelist* ndlp; int nlp_DID; scalar_t__ vport; } ;
struct lpfc_hba {int rrq_pool; } ;


 scalar_t__ NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 struct lpfc_nodelist* lpfc_findnode_did (scalar_t__,int ) ;
 int mempool_free (struct lpfc_node_rrq*,int ) ;
 scalar_t__ test_and_clear_bit (int ,int ) ;

void
lpfc_clr_rrq_active(struct lpfc_hba *phba,
      uint16_t xritag,
      struct lpfc_node_rrq *rrq)
{
 struct lpfc_nodelist *ndlp = ((void*)0);

 if ((rrq->vport) && NLP_CHK_NODE_ACT(rrq->ndlp))
  ndlp = lpfc_findnode_did(rrq->vport, rrq->nlp_DID);





 if ((!ndlp) && rrq->ndlp)
  ndlp = rrq->ndlp;

 if (!ndlp)
  goto out;

 if (test_and_clear_bit(xritag, ndlp->active_rrqs_xri_bitmap)) {
  rrq->send_rrq = 0;
  rrq->xritag = 0;
  rrq->rrq_stop_time = 0;
 }
out:
 mempool_free(rrq, phba->rrq_pool);
}
