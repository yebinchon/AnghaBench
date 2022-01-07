
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct lpfc_name {int dummy; } ;
struct lpfc_hba {int device_data_mem_pool; int cfg_fof; } ;
struct TYPE_2__ {int lun; int target_wwpn; int vport_wwpn; } ;
struct lpfc_device_data {int oas_enabled; int available; int priority; TYPE_1__ device_id; int * rport_data; int listentry; } ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int memcpy (int *,struct lpfc_name*,int) ;
 struct lpfc_device_data* mempool_alloc (int ,int) ;
 scalar_t__ unlikely (int) ;

struct lpfc_device_data*
lpfc_create_device_data(struct lpfc_hba *phba, struct lpfc_name *vport_wwpn,
   struct lpfc_name *target_wwpn, uint64_t lun,
   uint32_t pri, bool atomic_create)
{

 struct lpfc_device_data *lun_info;
 int memory_flags;

 if (unlikely(!phba) || !vport_wwpn || !target_wwpn ||
     !(phba->cfg_fof))
  return ((void*)0);



 if (atomic_create)
  memory_flags = GFP_ATOMIC;
 else
  memory_flags = GFP_KERNEL;
 lun_info = mempool_alloc(phba->device_data_mem_pool, memory_flags);
 if (!lun_info)
  return ((void*)0);
 INIT_LIST_HEAD(&lun_info->listentry);
 lun_info->rport_data = ((void*)0);
 memcpy(&lun_info->device_id.vport_wwpn, vport_wwpn,
        sizeof(struct lpfc_name));
 memcpy(&lun_info->device_id.target_wwpn, target_wwpn,
        sizeof(struct lpfc_name));
 lun_info->device_id.lun = lun;
 lun_info->oas_enabled = 0;
 lun_info->priority = pri;
 lun_info->available = 0;
 return lun_info;
}
