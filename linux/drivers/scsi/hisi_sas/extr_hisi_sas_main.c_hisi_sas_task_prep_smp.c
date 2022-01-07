
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hisi_sas_slot {int dummy; } ;
struct hisi_hba {TYPE_1__* hw; } ;
struct TYPE_2__ {int (* prep_smp ) (struct hisi_hba*,struct hisi_sas_slot*) ;} ;


 int stub1 (struct hisi_hba*,struct hisi_sas_slot*) ;

__attribute__((used)) static void hisi_sas_task_prep_smp(struct hisi_hba *hisi_hba,
      struct hisi_sas_slot *slot)
{
 hisi_hba->hw->prep_smp(hisi_hba, slot);
}
