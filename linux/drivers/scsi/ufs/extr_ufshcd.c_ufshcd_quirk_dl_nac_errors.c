
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_hba {int saved_err; int saved_uic_err; TYPE_1__* host; } ;
struct TYPE_2__ {int host_lock; } ;


 int CONTROLLER_FATAL_ERROR ;
 int DEVICE_FATAL_ERROR ;
 int INT_FATAL_ERRORS ;
 int SYSTEM_BUS_FATAL_ERROR ;
 int UFSHCD_UIC_DL_NAC_RECEIVED_ERROR ;
 int UFSHCD_UIC_DL_TCx_REPLAY_ERROR ;
 int UIC_ERROR ;
 int msleep (int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ufshcd_verify_dev_init (struct ufs_hba*) ;

__attribute__((used)) static bool ufshcd_quirk_dl_nac_errors(struct ufs_hba *hba)
{
 unsigned long flags;
 bool err_handling = 1;

 spin_lock_irqsave(hba->host->host_lock, flags);




 if (hba->saved_err & (CONTROLLER_FATAL_ERROR | SYSTEM_BUS_FATAL_ERROR))
  goto out;

 if ((hba->saved_err & DEVICE_FATAL_ERROR) ||
     ((hba->saved_err & UIC_ERROR) &&
      (hba->saved_uic_err & UFSHCD_UIC_DL_TCx_REPLAY_ERROR)))
  goto out;

 if ((hba->saved_err & UIC_ERROR) &&
     (hba->saved_uic_err & UFSHCD_UIC_DL_NAC_RECEIVED_ERROR)) {
  int err;



  spin_unlock_irqrestore(hba->host->host_lock, flags);
  msleep(50);
  spin_lock_irqsave(hba->host->host_lock, flags);





  if ((hba->saved_err & INT_FATAL_ERRORS) ||
      ((hba->saved_err & UIC_ERROR) &&
      (hba->saved_uic_err & ~UFSHCD_UIC_DL_NAC_RECEIVED_ERROR)))
   goto out;
  spin_unlock_irqrestore(hba->host->host_lock, flags);
  err = ufshcd_verify_dev_init(hba);
  spin_lock_irqsave(hba->host->host_lock, flags);

  if (err)
   goto out;


  if (hba->saved_uic_err == UFSHCD_UIC_DL_NAC_RECEIVED_ERROR)
   hba->saved_err &= ~UIC_ERROR;

  hba->saved_uic_err &= ~UFSHCD_UIC_DL_NAC_RECEIVED_ERROR;
  if (!hba->saved_uic_err) {
   err_handling = 0;
   goto out;
  }
 }
out:
 spin_unlock_irqrestore(hba->host->host_lock, flags);
 return err_handling;
}
