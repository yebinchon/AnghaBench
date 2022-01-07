
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_queue {int host_index; int entry_count; int qe_valid; } ;
struct TYPE_4__ {scalar_t__ eqav; } ;
struct TYPE_3__ {TYPE_2__ pc_sli4_params; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;
struct lpfc_eqe {int dummy; } ;


 int bf_set_le32 (int ,struct lpfc_eqe*,int ) ;
 int lpfc_eqe_valid ;

__attribute__((used)) static void
__lpfc_sli4_consume_eqe(struct lpfc_hba *phba, struct lpfc_queue *eq,
   struct lpfc_eqe *eqe)
{
 if (!phba->sli4_hba.pc_sli4_params.eqav)
  bf_set_le32(lpfc_eqe_valid, eqe, 0);

 eq->host_index = ((eq->host_index + 1) % eq->entry_count);


 if (phba->sli4_hba.pc_sli4_params.eqav && !eq->host_index)
  eq->qe_valid = (eq->qe_valid) ? 0 : 1;
}
