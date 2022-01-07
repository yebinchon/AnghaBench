
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; int nlp_listp; } ;


 int NLP_STE_UNUSED_NODE ;
 int list_empty (int *) ;
 int lpfc_cancel_retry_delay_tmo (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int lpfc_nlp_counters (struct lpfc_vport*,scalar_t__,int) ;
 int lpfc_nlp_state_cleanup (struct lpfc_vport*,struct lpfc_nodelist*,scalar_t__,int ) ;

__attribute__((used)) static void
lpfc_disable_node(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
{
 lpfc_cancel_retry_delay_tmo(vport, ndlp);
 if (ndlp->nlp_state && !list_empty(&ndlp->nlp_listp))
  lpfc_nlp_counters(vport, ndlp->nlp_state, -1);
 lpfc_nlp_state_cleanup(vport, ndlp, ndlp->nlp_state,
    NLP_STE_UNUSED_NODE);
}
