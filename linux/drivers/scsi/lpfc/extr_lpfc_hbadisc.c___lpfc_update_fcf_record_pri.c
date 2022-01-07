
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_3__ {struct lpfc_fcf_pri* fcf_pri; } ;
struct lpfc_hba {TYPE_1__ fcf; int hbalock; } ;
struct TYPE_4__ {size_t fcf_index; int priority; } ;
struct lpfc_fcf_pri {TYPE_2__ fcf_rec; } ;
struct fcf_record {int fip_priority; } ;


 int lockdep_assert_held (int *) ;

__attribute__((used)) static void
__lpfc_update_fcf_record_pri(struct lpfc_hba *phba, uint16_t fcf_index,
     struct fcf_record *new_fcf_record
     )
{
 struct lpfc_fcf_pri *fcf_pri;

 lockdep_assert_held(&phba->hbalock);

 fcf_pri = &phba->fcf.fcf_pri[fcf_index];
 fcf_pri->fcf_rec.fcf_index = fcf_index;

 fcf_pri->fcf_rec.priority = new_fcf_record->fip_priority;

}
