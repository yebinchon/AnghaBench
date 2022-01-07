
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {int sli_intf; } ;
struct lpfc_hba {char* ModelName; TYPE_1__* pcidev; TYPE_2__ sli4_hba; } ;
struct firmware {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int ELX_MODEL_NAME_SIZE ;
 int EPERM ;
 int FW_ACTION_HOTPLUG ;
 int GFP_KERNEL ;
 scalar_t__ INT_FW_UPGRADE ;
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_2 ;
 scalar_t__ RUN_FW_UPGRADE ;
 int THIS_MODULE ;
 scalar_t__ bf_get (int ,int *) ;
 int lpfc_sli_intf_if_type ;
 int lpfc_write_firmware (struct firmware const*,void*) ;
 int request_firmware (struct firmware const**,scalar_t__*,int *) ;
 int request_firmware_nowait (int ,int ,scalar_t__*,int *,int ,void*,int (*) (struct firmware const*,void*)) ;
 int snprintf (scalar_t__*,int,char*,char*) ;

int
lpfc_sli4_request_firmware_update(struct lpfc_hba *phba, uint8_t fw_upgrade)
{
 uint8_t file_name[ELX_MODEL_NAME_SIZE];
 int ret;
 const struct firmware *fw;


 if (bf_get(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf) <
     LPFC_SLI_INTF_IF_TYPE_2)
  return -EPERM;

 snprintf(file_name, ELX_MODEL_NAME_SIZE, "%s.grp", phba->ModelName);

 if (fw_upgrade == INT_FW_UPGRADE) {
  ret = request_firmware_nowait(THIS_MODULE, FW_ACTION_HOTPLUG,
     file_name, &phba->pcidev->dev,
     GFP_KERNEL, (void *)phba,
     lpfc_write_firmware);
 } else if (fw_upgrade == RUN_FW_UPGRADE) {
  ret = request_firmware(&fw, file_name, &phba->pcidev->dev);
  if (!ret)
   lpfc_write_firmware(fw, (void *)phba);
 } else {
  ret = -EINVAL;
 }

 return ret;
}
