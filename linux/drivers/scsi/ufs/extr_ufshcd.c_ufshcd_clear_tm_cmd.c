
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ufs_hba {TYPE_1__* host; int outstanding_tasks; } ;
struct TYPE_2__ {int host_lock; } ;


 int REG_UTP_TASK_REQ_DOOR_BELL ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int test_bit (int,int *) ;
 int ufshcd_utmrl_clear (struct ufs_hba*,int) ;
 int ufshcd_wait_for_register (struct ufs_hba*,int ,int,int ,int,int,int) ;

__attribute__((used)) static int ufshcd_clear_tm_cmd(struct ufs_hba *hba, int tag)
{
 int err = 0;
 u32 mask = 1 << tag;
 unsigned long flags;

 if (!test_bit(tag, &hba->outstanding_tasks))
  goto out;

 spin_lock_irqsave(hba->host->host_lock, flags);
 ufshcd_utmrl_clear(hba, tag);
 spin_unlock_irqrestore(hba->host->host_lock, flags);


 err = ufshcd_wait_for_register(hba,
   REG_UTP_TASK_REQ_DOOR_BELL,
   mask, 0, 1000, 1000, 1);
out:
 return err;
}
