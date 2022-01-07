
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int lsRjtRsnCodeExp; int lsRjtRsnCode; } ;
struct TYPE_4__ {int lsRjtError; TYPE_1__ b; } ;
struct ls_rjt {TYPE_2__ un; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_state; } ;
struct lpfc_iocbq {int dummy; } ;


 int LSEXP_NOTHING_MORE ;
 int LSRJT_UNABLE_TPC ;
 int lpfc_els_rsp_reject (struct lpfc_vport*,int ,struct lpfc_iocbq*,struct lpfc_nodelist*,int *) ;
 int memset (struct ls_rjt*,int ,int) ;

__attribute__((used)) static uint32_t
lpfc_rcv_prlo_logo_issue(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
    void *arg, uint32_t evt)
{
 struct lpfc_iocbq *cmdiocb = (struct lpfc_iocbq *)arg;
 struct ls_rjt stat;

 memset(&stat, 0, sizeof(struct ls_rjt));
 stat.un.b.lsRjtRsnCode = LSRJT_UNABLE_TPC;
 stat.un.b.lsRjtRsnCodeExp = LSEXP_NOTHING_MORE;
 lpfc_els_rsp_reject(vport, stat.un.lsRjtError, cmdiocb, ndlp, ((void*)0));
 return ndlp->nlp_state;
}
