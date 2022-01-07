
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_state; } ;
struct lpfc_iocbq {int dummy; } ;


 int lpfc_els_rsp_prli_acc (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ;
 int lpfc_rcv_prli (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*) ;
 int lpfc_rcv_prli_support_check (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*) ;

__attribute__((used)) static uint32_t
lpfc_rcv_prli_unmap_node(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
    void *arg, uint32_t evt)
{
 struct lpfc_iocbq *cmdiocb = (struct lpfc_iocbq *) arg;

 if (!lpfc_rcv_prli_support_check(vport, ndlp, cmdiocb))
  return ndlp->nlp_state;

 lpfc_rcv_prli(vport, ndlp, cmdiocb);
 lpfc_els_rsp_prli_acc(vport, cmdiocb, ndlp);
 return ndlp->nlp_state;
}
