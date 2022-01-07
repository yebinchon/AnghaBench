
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_hba {TYPE_1__* host; } ;
struct TYPE_2__ {int host_lock; } ;


 int MAX_HOST_RESET_RETRIES ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ufshcd_host_reset_and_restore (struct ufs_hba*) ;
 int ufshcd_tmc_handler (struct ufs_hba*) ;
 int ufshcd_transfer_req_compl (struct ufs_hba*) ;
 int ufshcd_vops_device_reset (struct ufs_hba*) ;

__attribute__((used)) static int ufshcd_reset_and_restore(struct ufs_hba *hba)
{
 int err = 0;
 unsigned long flags;
 int retries = MAX_HOST_RESET_RETRIES;

 do {

  ufshcd_vops_device_reset(hba);

  err = ufshcd_host_reset_and_restore(hba);
 } while (err && --retries);





 spin_lock_irqsave(hba->host->host_lock, flags);
 ufshcd_transfer_req_compl(hba);
 ufshcd_tmc_handler(hba);
 spin_unlock_irqrestore(hba->host->host_lock, flags);

 return err;
}
