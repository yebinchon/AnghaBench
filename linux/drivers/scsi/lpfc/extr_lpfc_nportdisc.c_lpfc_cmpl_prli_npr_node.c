
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_state; } ;
struct TYPE_4__ {scalar_t__ ulpStatus; } ;
struct TYPE_3__ {struct lpfc_iocbq* rsp_iocb; } ;
struct lpfc_iocbq {TYPE_2__ iocb; TYPE_1__ context_un; } ;
typedef TYPE_2__ IOCB_t ;


 int NLP_NODEV_REMOVE ;
 int NLP_STE_FREED_NODE ;
 int lpfc_drop_node (struct lpfc_vport*,struct lpfc_nodelist*) ;

__attribute__((used)) static uint32_t
lpfc_cmpl_prli_npr_node(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
   void *arg, uint32_t evt)
{
 struct lpfc_iocbq *cmdiocb, *rspiocb;
 IOCB_t *irsp;

 cmdiocb = (struct lpfc_iocbq *) arg;
 rspiocb = cmdiocb->context_un.rsp_iocb;

 irsp = &rspiocb->iocb;
 if (irsp->ulpStatus && (ndlp->nlp_flag & NLP_NODEV_REMOVE)) {
  lpfc_drop_node(vport, ndlp);
  return NLP_STE_FREED_NODE;
 }
 return ndlp->nlp_state;
}
