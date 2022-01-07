
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int device_data_mem_pool; int cfg_fof; } ;
struct lpfc_device_data {int listentry; } ;


 int list_del (int *) ;
 int list_empty (int *) ;
 int mempool_free (struct lpfc_device_data*,int ) ;
 scalar_t__ unlikely (int) ;

void
lpfc_delete_device_data(struct lpfc_hba *phba,
   struct lpfc_device_data *lun_info)
{

 if (unlikely(!phba) || !lun_info ||
     !(phba->cfg_fof))
  return;

 if (!list_empty(&lun_info->listentry))
  list_del(&lun_info->listentry);
 mempool_free(lun_info, phba->device_data_mem_pool);
 return;
}
