
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int load_flag; scalar_t__ num_disc_nodes; scalar_t__ fc_ns_retry; int port_state; int fc_rscn_id_cnt; int fc_flag; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; scalar_t__ nlp_prev_state; int nlp_type; } ;
struct lpfc_hba {scalar_t__ cfg_ns_query; } ;


 int FC_UNLOADING ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 scalar_t__ LPFC_NS_QUERY_GID_FT ;
 scalar_t__ LPFC_NS_QUERY_GID_PT ;
 scalar_t__ NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_FABRIC ;
 int NLP_STE_PLOGI_ISSUE ;
 scalar_t__ NLP_STE_UNMAPPED_NODE ;
 scalar_t__ NLP_STE_UNUSED_NODE ;
 int NameServer_DID ;
 int lpfc_els_flush_rscn (struct lpfc_vport*) ;
 struct lpfc_nodelist* lpfc_enable_node (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 int lpfc_issue_els_plogi (struct lpfc_vport*,int ,int ) ;
 scalar_t__ lpfc_issue_gidft (struct lpfc_vport*) ;
 scalar_t__ lpfc_issue_gidpt (struct lpfc_vport*) ;
 struct lpfc_nodelist* lpfc_nlp_init (struct lpfc_vport*,int ) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int ,int ,int ) ;
 int lpfc_set_disctmo (struct lpfc_vport*) ;

int
lpfc_els_handle_rscn(struct lpfc_vport *vport)
{
 struct lpfc_nodelist *ndlp;
 struct lpfc_hba *phba = vport->phba;


 if (vport->load_flag & FC_UNLOADING) {
  lpfc_els_flush_rscn(vport);
  return 0;
 }


 lpfc_set_disctmo(vport);


 lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
    "0215 RSCN processed Data: x%x x%x x%x x%x\n",
    vport->fc_flag, 0, vport->fc_rscn_id_cnt,
    vport->port_state);


 vport->fc_ns_retry = 0;
 vport->num_disc_nodes = 0;

 ndlp = lpfc_findnode_did(vport, NameServer_DID);
 if (ndlp && NLP_CHK_NODE_ACT(ndlp)
     && ndlp->nlp_state == NLP_STE_UNMAPPED_NODE) {





  if (phba->cfg_ns_query == LPFC_NS_QUERY_GID_FT) {
   if (lpfc_issue_gidft(vport) > 0)
    return 1;
  } else if (phba->cfg_ns_query == LPFC_NS_QUERY_GID_PT) {
   if (lpfc_issue_gidpt(vport) > 0)
    return 1;
  } else {
   return 1;
  }
 } else {

  if (ndlp) {
   ndlp = lpfc_enable_node(vport, ndlp,
      NLP_STE_PLOGI_ISSUE);
   if (!ndlp) {
    lpfc_els_flush_rscn(vport);
    return 0;
   }
   ndlp->nlp_prev_state = NLP_STE_UNUSED_NODE;
  } else {
   ndlp = lpfc_nlp_init(vport, NameServer_DID);
   if (!ndlp) {
    lpfc_els_flush_rscn(vport);
    return 0;
   }
   ndlp->nlp_prev_state = ndlp->nlp_state;
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_PLOGI_ISSUE);
  }
  ndlp->nlp_type |= NLP_FABRIC;
  lpfc_issue_els_plogi(vport, NameServer_DID, 0);



  return 1;
 }

 lpfc_els_flush_rscn(vport);
 return 0;
}
