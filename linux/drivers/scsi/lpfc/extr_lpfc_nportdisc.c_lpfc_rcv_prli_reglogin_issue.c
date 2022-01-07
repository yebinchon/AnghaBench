
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int lsRjtRsnCodeExp; int lsRjtRsnCode; } ;
struct TYPE_6__ {int lsRjtError; TYPE_2__ b; } ;
struct ls_rjt {TYPE_3__ un; } ;
struct lpfc_vport {TYPE_1__* phba; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_state; } ;
struct lpfc_iocbq {int dummy; } ;
struct TYPE_4__ {scalar_t__ nvmet_support; } ;


 int LSEXP_NOTHING_MORE ;
 int LSRJT_LOGICAL_BSY ;
 int NLP_RPI_REGISTERED ;
 int lpfc_els_rsp_prli_acc (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ;
 int lpfc_els_rsp_reject (struct lpfc_vport*,int ,struct lpfc_iocbq*,struct lpfc_nodelist*,int *) ;
 int lpfc_rcv_prli (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*) ;
 int lpfc_rcv_prli_support_check (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*) ;
 int memset (struct ls_rjt*,int ,int) ;

__attribute__((used)) static uint32_t
lpfc_rcv_prli_reglogin_issue(struct lpfc_vport *vport,
        struct lpfc_nodelist *ndlp,
        void *arg,
        uint32_t evt)
{
 struct lpfc_iocbq *cmdiocb = (struct lpfc_iocbq *) arg;
 struct ls_rjt stat;

 if (!lpfc_rcv_prli_support_check(vport, ndlp, cmdiocb)) {
  return ndlp->nlp_state;
 }
 if (vport->phba->nvmet_support) {




  if (ndlp->nlp_flag & NLP_RPI_REGISTERED) {
   lpfc_rcv_prli(vport, ndlp, cmdiocb);
   lpfc_els_rsp_prli_acc(vport, cmdiocb, ndlp);
  } else {




   memset(&stat, 0, sizeof(struct ls_rjt));
   stat.un.b.lsRjtRsnCode = LSRJT_LOGICAL_BSY;
   stat.un.b.lsRjtRsnCodeExp = LSEXP_NOTHING_MORE;
   lpfc_els_rsp_reject(vport, stat.un.lsRjtError, cmdiocb,
         ndlp, ((void*)0));
   return ndlp->nlp_state;
  }
 } else {

  lpfc_els_rsp_prli_acc(vport, cmdiocb, ndlp);
 }
 return ndlp->nlp_state;
}
