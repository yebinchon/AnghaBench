
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int clk_scaling_lock; } ;


 int DOORBELL_CLR_TOUT_US ;
 int EBUSY ;
 int down_write (int *) ;
 int ufshcd_scsi_block_requests (struct ufs_hba*) ;
 int ufshcd_scsi_unblock_requests (struct ufs_hba*) ;
 scalar_t__ ufshcd_wait_for_doorbell_clr (struct ufs_hba*,int ) ;
 int up_write (int *) ;

__attribute__((used)) static int ufshcd_clock_scaling_prepare(struct ufs_hba *hba)
{

 int ret = 0;




 ufshcd_scsi_block_requests(hba);
 down_write(&hba->clk_scaling_lock);
 if (ufshcd_wait_for_doorbell_clr(hba, (1000 * 1000))) {
  ret = -EBUSY;
  up_write(&hba->clk_scaling_lock);
  ufshcd_scsi_unblock_requests(hba);
 }

 return ret;
}
