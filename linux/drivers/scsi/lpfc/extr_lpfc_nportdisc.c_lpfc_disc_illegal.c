
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; int nlp_flag; int nlp_rpi; int nlp_DID; } ;
struct lpfc_hba {TYPE_1__* pport; } ;
struct TYPE_7__ {int * varWords; } ;
struct TYPE_8__ {TYPE_2__ un; int mbxStatus; } ;
struct TYPE_9__ {TYPE_3__ mb; } ;
struct TYPE_10__ {TYPE_4__ u; } ;
struct TYPE_6__ {int load_flag; } ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 int FC_UNLOADING ;
 int KERN_ERR ;
 int LOG_DISCOVERY ;
 scalar_t__ NLP_EVT_CMPL_REG_LOGIN ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,scalar_t__,scalar_t__,int ,int ) ;
 int lpfc_release_rpi (struct lpfc_hba*,struct lpfc_vport*,struct lpfc_nodelist*,int ) ;

__attribute__((used)) static uint32_t
lpfc_disc_illegal(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
    void *arg, uint32_t evt)
{
 struct lpfc_hba *phba;
 LPFC_MBOXQ_t *pmb = (LPFC_MBOXQ_t *) arg;
 uint16_t rpi;

 phba = vport->phba;

 if (!(phba->pport->load_flag & FC_UNLOADING) &&
  (evt == NLP_EVT_CMPL_REG_LOGIN) &&
  (!pmb->u.mb.mbxStatus)) {
  rpi = pmb->u.mb.un.varWords[0];
  lpfc_release_rpi(phba, vport, ndlp, rpi);
 }
 lpfc_printf_vlog(vport, KERN_ERR, LOG_DISCOVERY,
    "0271 Illegal State Transition: node x%x "
    "event x%x, state x%x Data: x%x x%x\n",
    ndlp->nlp_DID, evt, ndlp->nlp_state, ndlp->nlp_rpi,
    ndlp->nlp_flag);
 return ndlp->nlp_state;
}
