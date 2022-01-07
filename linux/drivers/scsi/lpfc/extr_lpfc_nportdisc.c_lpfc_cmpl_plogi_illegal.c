
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_state; int nlp_rpi; int nlp_DID; } ;


 int KERN_ERR ;
 int LOG_DISCOVERY ;
 int NLP_RCV_PLOGI ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int ,int ,int ,int) ;

__attribute__((used)) static uint32_t
lpfc_cmpl_plogi_illegal(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
    void *arg, uint32_t evt)
{





 if (!(ndlp->nlp_flag & NLP_RCV_PLOGI)) {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_DISCOVERY,
    "0272 Illegal State Transition: node x%x "
    "event x%x, state x%x Data: x%x x%x\n",
    ndlp->nlp_DID, evt, ndlp->nlp_state, ndlp->nlp_rpi,
    ndlp->nlp_flag);
 }
 return ndlp->nlp_state;
}
