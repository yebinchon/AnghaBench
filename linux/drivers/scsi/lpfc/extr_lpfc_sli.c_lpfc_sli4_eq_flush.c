
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct lpfc_queue {int dummy; } ;
struct TYPE_2__ {int (* sli4_write_eq_db ) (struct lpfc_hba*,struct lpfc_queue*,scalar_t__,int ) ;} ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;
struct lpfc_eqe {int dummy; } ;


 int LPFC_QUEUE_REARM ;
 int __lpfc_sli4_consume_eqe (struct lpfc_hba*,struct lpfc_queue*,struct lpfc_eqe*) ;
 struct lpfc_eqe* lpfc_sli4_eq_get (struct lpfc_queue*) ;
 int stub1 (struct lpfc_hba*,struct lpfc_queue*,scalar_t__,int ) ;

__attribute__((used)) static void
lpfc_sli4_eq_flush(struct lpfc_hba *phba, struct lpfc_queue *eq)
{
 struct lpfc_eqe *eqe;
 uint32_t count = 0;


 eqe = lpfc_sli4_eq_get(eq);
 while (eqe) {
  __lpfc_sli4_consume_eqe(phba, eq, eqe);
  count++;
  eqe = lpfc_sli4_eq_get(eq);
 }


 phba->sli4_hba.sli4_write_eq_db(phba, eq, count, LPFC_QUEUE_REARM);
}
