
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_hba {int outstanding_reqs; TYPE_1__* lrb; } ;
struct TYPE_2__ {int compl_time_stamp; int issue_time_stamp; } ;


 int REG_UTP_TRANSFER_REQ_DOOR_BELL ;
 int __set_bit (unsigned int,int *) ;
 int ktime_get () ;
 int ktime_set (int ,int ) ;
 int ufshcd_add_command_trace (struct ufs_hba*,unsigned int,char*) ;
 int ufshcd_clk_scaling_start_busy (struct ufs_hba*) ;
 int ufshcd_writel (struct ufs_hba*,int,int ) ;
 int wmb () ;

__attribute__((used)) static inline
void ufshcd_send_command(struct ufs_hba *hba, unsigned int task_tag)
{
 hba->lrb[task_tag].issue_time_stamp = ktime_get();
 hba->lrb[task_tag].compl_time_stamp = ktime_set(0, 0);
 ufshcd_clk_scaling_start_busy(hba);
 __set_bit(task_tag, &hba->outstanding_reqs);
 ufshcd_writel(hba, 1 << task_tag, REG_UTP_TRANSFER_REQ_DOOR_BELL);

 wmb();
 ufshcd_add_command_trace(hba, task_tag, "send");
}
