
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lpfc_sli_ring {TYPE_3__* prt; int num_mask; } ;
struct TYPE_5__ {TYPE_1__* els_wq; } ;
struct lpfc_hba {TYPE_2__ sli4_hba; } ;
struct TYPE_6__ {void* lpfc_sli_rcv_unsol_event; void* type; int rctl; scalar_t__ profile; } ;
struct TYPE_4__ {struct lpfc_sli_ring* pring; } ;


 int FC_RCTL_DD_SOL_CTL ;
 int FC_RCTL_DD_UNSOL_CTL ;
 int FC_RCTL_ELS_REP ;
 int FC_RCTL_ELS_REQ ;
 void* FC_TYPE_CT ;
 void* FC_TYPE_ELS ;
 int LPFC_MAX_RING_MASK ;
 void* lpfc_ct_unsol_event ;
 void* lpfc_els_unsol_event ;

int
lpfc_sli4_setup(struct lpfc_hba *phba)
{
 struct lpfc_sli_ring *pring;

 pring = phba->sli4_hba.els_wq->pring;
 pring->num_mask = LPFC_MAX_RING_MASK;
 pring->prt[0].profile = 0;
 pring->prt[0].rctl = FC_RCTL_ELS_REQ;
 pring->prt[0].type = FC_TYPE_ELS;
 pring->prt[0].lpfc_sli_rcv_unsol_event =
     lpfc_els_unsol_event;
 pring->prt[1].profile = 0;
 pring->prt[1].rctl = FC_RCTL_ELS_REP;
 pring->prt[1].type = FC_TYPE_ELS;
 pring->prt[1].lpfc_sli_rcv_unsol_event =
     lpfc_els_unsol_event;
 pring->prt[2].profile = 0;

 pring->prt[2].rctl = FC_RCTL_DD_UNSOL_CTL;

 pring->prt[2].type = FC_TYPE_CT;
 pring->prt[2].lpfc_sli_rcv_unsol_event =
     lpfc_ct_unsol_event;
 pring->prt[3].profile = 0;

 pring->prt[3].rctl = FC_RCTL_DD_SOL_CTL;

 pring->prt[3].type = FC_TYPE_CT;
 pring->prt[3].lpfc_sli_rcv_unsol_event =
     lpfc_ct_unsol_event;
 return 0;
}
