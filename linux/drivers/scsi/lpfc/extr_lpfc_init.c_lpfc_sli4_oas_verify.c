
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ oas_supported; } ;
struct TYPE_4__ {TYPE_1__ pc_sli4_params; } ;
struct lpfc_hba {int cfg_fof; int * device_data_mem_pool; TYPE_2__ sli4_hba; int cfg_EnableXLane; } ;


 int mempool_destroy (int *) ;

__attribute__((used)) static void
lpfc_sli4_oas_verify(struct lpfc_hba *phba)
{

 if (!phba->cfg_EnableXLane)
  return;

 if (phba->sli4_hba.pc_sli4_params.oas_supported) {
  phba->cfg_fof = 1;
 } else {
  phba->cfg_fof = 0;
  if (phba->device_data_mem_pool)
   mempool_destroy(phba->device_data_mem_pool);
  phba->device_data_mem_pool = ((void*)0);
 }

 return;
}
