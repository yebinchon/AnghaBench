
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int dummy; } ;


 int Fabric_DID ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_STE_UNUSED_NODE ;
 struct lpfc_nodelist* lpfc_enable_node (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_enqueue_node (struct lpfc_vport*,struct lpfc_nodelist*) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 scalar_t__ lpfc_issue_els_fdisc (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct lpfc_nodelist* lpfc_nlp_init (struct lpfc_vport*,int ) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;

int
lpfc_initial_fdisc(struct lpfc_vport *vport)
{
 struct lpfc_nodelist *ndlp;


 ndlp = lpfc_findnode_did(vport, Fabric_DID);
 if (!ndlp) {

  ndlp = lpfc_nlp_init(vport, Fabric_DID);
  if (!ndlp)
   return 0;

  lpfc_enqueue_node(vport, ndlp);
 } else if (!NLP_CHK_NODE_ACT(ndlp)) {

  ndlp = lpfc_enable_node(vport, ndlp, NLP_STE_UNUSED_NODE);
  if (!ndlp)
   return 0;
 }

 if (lpfc_issue_els_fdisc(vport, ndlp, 0)) {



  lpfc_nlp_put(ndlp);
  return 0;
 }
 return 1;
}
