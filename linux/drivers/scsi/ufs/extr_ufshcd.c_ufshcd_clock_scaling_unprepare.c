
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int clk_scaling_lock; } ;


 int ufshcd_scsi_unblock_requests (struct ufs_hba*) ;
 int up_write (int *) ;

__attribute__((used)) static void ufshcd_clock_scaling_unprepare(struct ufs_hba *hba)
{
 up_write(&hba->clk_scaling_lock);
 ufshcd_scsi_unblock_requests(hba);
}
