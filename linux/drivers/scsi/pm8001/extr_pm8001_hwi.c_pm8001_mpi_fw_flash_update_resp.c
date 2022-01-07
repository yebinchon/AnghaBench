
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct pm8001_hba_info {int nvmd_completion; struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_ccb_info {int ccb_tag; int * task; int fw_control_context; } ;
struct fw_flash_Update_resp {int status; int tag; } ;
 int PM8001_MSG_DBG (struct pm8001_hba_info*,int ) ;
 int complete (int ) ;
 int kfree (int ) ;
 size_t le32_to_cpu (int ) ;
 int pm8001_printk (char*,...) ;
 int pm8001_tag_free (struct pm8001_hba_info*,size_t) ;

int pm8001_mpi_fw_flash_update_resp(struct pm8001_hba_info *pm8001_ha,
  void *piomb)
{
 u32 status;
 struct fw_flash_Update_resp *ppayload =
  (struct fw_flash_Update_resp *)(piomb + 4);
 u32 tag = le32_to_cpu(ppayload->tag);
 struct pm8001_ccb_info *ccb = &pm8001_ha->ccb_info[tag];
 status = le32_to_cpu(ppayload->status);
 switch (status) {
 case 136:
  PM8001_MSG_DBG(pm8001_ha,
  pm8001_printk(": FLASH_UPDATE_COMPLETE_PENDING_REBOOT\n"));
  break;
 case 130:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(": FLASH_UPDATE_IN_PROGRESS\n"));
  break;
 case 132:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(": FLASH_UPDATE_HDR_ERR\n"));
  break;
 case 128:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(": FLASH_UPDATE_OFFSET_ERR\n"));
  break;
 case 135:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(": FLASH_UPDATE_CRC_ERR\n"));
  break;
 case 129:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(": FLASH_UPDATE_LENGTH_ERR\n"));
  break;
 case 131:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(": FLASH_UPDATE_HW_ERR\n"));
  break;
 case 133:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(": FLASH_UPDATE_DNLD_NOT_SUPPORTED\n"));
  break;
 case 134:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(": FLASH_UPDATE_DISABLED\n"));
  break;
 default:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("No matched status = %d\n", status));
  break;
 }
 kfree(ccb->fw_control_context);
 ccb->task = ((void*)0);
 ccb->ccb_tag = 0xFFFFFFFF;
 pm8001_tag_free(pm8001_ha, tag);
 complete(pm8001_ha->nvmd_completion);
 return 0;
}
