
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_state; } ;
struct lpfc_hba {TYPE_1__* pport; } ;
struct TYPE_7__ {int * varWords; } ;
struct TYPE_9__ {TYPE_2__ un; int mbxStatus; } ;
struct TYPE_8__ {TYPE_4__ mb; } ;
struct TYPE_10__ {TYPE_3__ u; } ;
struct TYPE_6__ {int load_flag; } ;
typedef TYPE_4__ MAILBOX_t ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 int FC_UNLOADING ;
 int lpfc_release_rpi (struct lpfc_hba*,struct lpfc_vport*,struct lpfc_nodelist*,int ) ;

__attribute__((used)) static uint32_t
lpfc_cmpl_reglogin_plogi_issue(struct lpfc_vport *vport,
 struct lpfc_nodelist *ndlp, void *arg, uint32_t evt)
{
 struct lpfc_hba *phba;
 LPFC_MBOXQ_t *pmb = (LPFC_MBOXQ_t *) arg;
 MAILBOX_t *mb = &pmb->u.mb;
 uint16_t rpi;

 phba = vport->phba;

 if (!(phba->pport->load_flag & FC_UNLOADING) &&
  !mb->mbxStatus) {
  rpi = pmb->u.mb.un.varWords[0];
  lpfc_release_rpi(phba, vport, ndlp, rpi);
 }
 return ndlp->nlp_state;
}
