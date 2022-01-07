
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct pm8001_hba_info {int nvmd_completion; struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_ccb_info {int ccb_tag; int * task; } ;
struct get_nvm_data_resp {int dlen_status; int tag; } ;


 size_t NVMD_STAT ;
 int PM8001_FAIL_DBG (struct pm8001_hba_info*,int ) ;
 int PM8001_MSG_DBG (struct pm8001_hba_info*,int ) ;
 int complete (int ) ;
 size_t le32_to_cpu (int ) ;
 int pm8001_printk (char*) ;
 int pm8001_tag_free (struct pm8001_hba_info*,size_t) ;

void pm8001_mpi_set_nvmd_resp(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
 struct get_nvm_data_resp *pPayload =
  (struct get_nvm_data_resp *)(piomb + 4);
 u32 tag = le32_to_cpu(pPayload->tag);
 struct pm8001_ccb_info *ccb = &pm8001_ha->ccb_info[tag];
 u32 dlen_status = le32_to_cpu(pPayload->dlen_status);
 complete(pm8001_ha->nvmd_completion);
 PM8001_MSG_DBG(pm8001_ha, pm8001_printk("Set nvm data complete!\n"));
 if ((dlen_status & NVMD_STAT) != 0) {
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("Set nvm data error!\n"));
  return;
 }
 ccb->task = ((void*)0);
 ccb->ccb_tag = 0xFFFFFFFF;
 pm8001_tag_free(pm8001_ha, tag);
}
