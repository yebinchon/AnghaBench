
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {TYPE_2__* phba; } ;
struct lpfc_nodelist {int nlp_state; int nlp_rpi; } ;
struct TYPE_3__ {int ulpIoTag; } ;
struct lpfc_iocbq {TYPE_1__ iocb; } ;
struct TYPE_4__ {scalar_t__ sli_rev; } ;


 int ELS_CMD_LOGO ;
 scalar_t__ LPFC_SLI_REV3 ;
 int lpfc_els_abort (TYPE_2__*,struct lpfc_nodelist*) ;
 int lpfc_rcv_logo (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*,int ) ;

__attribute__((used)) static uint32_t
lpfc_rcv_logo_plogi_issue(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
     void *arg, uint32_t evt)
{
 struct lpfc_iocbq *cmdiocb = (struct lpfc_iocbq *) arg;


 if (vport->phba->sli_rev == LPFC_SLI_REV3)
  ndlp->nlp_rpi = cmdiocb->iocb.ulpIoTag;

 lpfc_els_abort(vport->phba, ndlp);

 lpfc_rcv_logo(vport, ndlp, cmdiocb, ELS_CMD_LOGO);
 return ndlp->nlp_state;
}
