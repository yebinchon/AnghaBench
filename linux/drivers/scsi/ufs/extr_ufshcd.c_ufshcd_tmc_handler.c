
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int tm_condition; int outstanding_tasks; int tm_wq; } ;


 int REG_UTP_TASK_REQ_DOOR_BELL ;
 int ufshcd_readl (struct ufs_hba*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void ufshcd_tmc_handler(struct ufs_hba *hba)
{
 u32 tm_doorbell;

 tm_doorbell = ufshcd_readl(hba, REG_UTP_TASK_REQ_DOOR_BELL);
 hba->tm_condition = tm_doorbell ^ hba->outstanding_tasks;
 wake_up(&hba->tm_wq);
}
