
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ufs_hba {TYPE_1__* host; } ;
struct TYPE_2__ {int host_lock; } ;


 int REG_UTP_TRANSFER_REQ_DOOR_BELL ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ufshcd_utrl_clear (struct ufs_hba*,int) ;
 int ufshcd_wait_for_register (struct ufs_hba*,int ,int,int,int,int,int) ;

__attribute__((used)) static int
ufshcd_clear_cmd(struct ufs_hba *hba, int tag)
{
 int err = 0;
 unsigned long flags;
 u32 mask = 1 << tag;


 spin_lock_irqsave(hba->host->host_lock, flags);
 ufshcd_utrl_clear(hba, tag);
 spin_unlock_irqrestore(hba->host->host_lock, flags);





 err = ufshcd_wait_for_register(hba,
   REG_UTP_TRANSFER_REQ_DOOR_BELL,
   mask, ~mask, 1000, 1000, 1);

 return err;
}
