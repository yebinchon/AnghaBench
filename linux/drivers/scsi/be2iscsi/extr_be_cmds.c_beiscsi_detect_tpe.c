
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct beiscsi_hba {int state; } ;


 int BEISCSI_HBA_IN_TPE ;
 int KERN_INFO ;
 int POST_ERR_RECOVERY_CODE_MASK ;
 int POST_STAGE_MASK ;
 int POST_STAGE_RECOVERABLE_ERR ;
 int __beiscsi_log (struct beiscsi_hba*,int ,char*,int) ;
 int beiscsi_get_post_stage (struct beiscsi_hba*) ;
 int set_bit (int ,int *) ;

int beiscsi_detect_tpe(struct beiscsi_hba *phba)
{
 u32 post, status;
 int ret = 0;

 post = beiscsi_get_post_stage(phba);
 status = post & POST_STAGE_MASK;
 if ((status & POST_ERR_RECOVERY_CODE_MASK) ==
     POST_STAGE_RECOVERABLE_ERR) {
  set_bit(BEISCSI_HBA_IN_TPE, &phba->state);
  __beiscsi_log(phba, KERN_INFO,
         "BC_%d : HBA error recoverable: 0x%x\n", post);
  ret = 1;
 } else {
  __beiscsi_log(phba, KERN_INFO,
         "BC_%d : HBA in UE: 0x%x\n", post);
 }

 return ret;
}
