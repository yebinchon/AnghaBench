
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_DID; int nlp_type; } ;


 int FDMI_DID ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_FABRIC ;
 int NLP_STE_NPR_NODE ;
 int NLP_STE_PLOGI_ISSUE ;
 struct lpfc_nodelist* lpfc_enable_node (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 int lpfc_issue_els_plogi (struct lpfc_vport*,int ,int ) ;
 struct lpfc_nodelist* lpfc_nlp_init (struct lpfc_vport*,int ) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;

__attribute__((used)) static void
lpfc_start_fdmi(struct lpfc_vport *vport)
{
 struct lpfc_nodelist *ndlp;





 ndlp = lpfc_findnode_did(vport, FDMI_DID);
 if (!ndlp) {
  ndlp = lpfc_nlp_init(vport, FDMI_DID);
  if (ndlp) {
   ndlp->nlp_type |= NLP_FABRIC;
  } else {
   return;
  }
 }
 if (!NLP_CHK_NODE_ACT(ndlp))
  ndlp = lpfc_enable_node(vport, ndlp, NLP_STE_NPR_NODE);

 if (ndlp) {
  lpfc_nlp_set_state(vport, ndlp, NLP_STE_PLOGI_ISSUE);
  lpfc_issue_els_plogi(vport, ndlp->nlp_DID, 0);
 }
}
