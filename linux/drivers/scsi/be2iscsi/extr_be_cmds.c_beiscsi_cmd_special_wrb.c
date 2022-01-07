
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct beiscsi_hba {int dummy; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_ctrl_info {int mbox_lock; int pdev; int mbox_mem; } ;


 int BEISCSI_LOG_INIT ;
 int KERN_INFO ;
 int be_dws_cpu_to_le (struct be_mcc_wrb*,int) ;
 int be_mbox_notify (struct be_ctrl_info*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 int memset (struct be_mcc_wrb*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct beiscsi_hba* pci_get_drvdata (int ) ;
 struct be_mcc_wrb* wrb_from_mbox (int *) ;

int beiscsi_cmd_special_wrb(struct be_ctrl_info *ctrl, u32 load)
{
 struct be_mcc_wrb *wrb = wrb_from_mbox(&ctrl->mbox_mem);
 struct beiscsi_hba *phba = pci_get_drvdata(ctrl->pdev);
 u8 *endian_check;
 int status;

 mutex_lock(&ctrl->mbox_lock);
 memset(wrb, 0, sizeof(*wrb));

 endian_check = (u8 *) wrb;
 if (load) {

  *endian_check++ = 0xFF;
  *endian_check++ = 0x12;
  *endian_check++ = 0x34;
  *endian_check++ = 0xFF;
  *endian_check++ = 0xFF;
  *endian_check++ = 0x56;
  *endian_check++ = 0x78;
  *endian_check++ = 0xFF;
 } else {

  *endian_check++ = 0xFF;
  *endian_check++ = 0xAA;
  *endian_check++ = 0xBB;
  *endian_check++ = 0xFF;
  *endian_check++ = 0xFF;
  *endian_check++ = 0xCC;
  *endian_check++ = 0xDD;
  *endian_check = 0xFF;
 }
 be_dws_cpu_to_le(wrb, sizeof(*wrb));

 status = be_mbox_notify(ctrl);
 if (status)
  beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_INIT,
       "BC_%d : special WRB message failed\n");
 mutex_unlock(&ctrl->mbox_lock);
 return status;
}
