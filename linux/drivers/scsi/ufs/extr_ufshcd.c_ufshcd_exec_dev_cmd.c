
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ufshcd_lrb {scalar_t__ cmd; } ;
struct TYPE_4__ {int tag_wq; struct completion* complete; } ;
struct ufs_hba {int clk_scaling_lock; TYPE_2__ dev_cmd; TYPE_1__* host; struct ufshcd_lrb* lrb; } ;
struct completion {int dummy; } ;
typedef enum dev_cmd_type { ____Placeholder_dev_cmd_type } dev_cmd_type ;
struct TYPE_3__ {int host_lock; } ;


 int WARN_ON (scalar_t__) ;
 int down_read (int *) ;
 int init_completion (struct completion*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ufshcd_add_query_upiu_trace (struct ufs_hba*,int,char*) ;
 int ufshcd_compose_dev_cmd (struct ufs_hba*,struct ufshcd_lrb*,int,int) ;
 int ufshcd_get_dev_cmd_tag (struct ufs_hba*,int*) ;
 int ufshcd_put_dev_cmd_tag (struct ufs_hba*,int) ;
 int ufshcd_send_command (struct ufs_hba*,int) ;
 int ufshcd_vops_setup_xfer_req (struct ufs_hba*,int,int) ;
 int ufshcd_wait_for_dev_cmd (struct ufs_hba*,struct ufshcd_lrb*,int) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;
 int wait_event (int ,int ) ;
 int wake_up (int *) ;
 int wmb () ;

__attribute__((used)) static int ufshcd_exec_dev_cmd(struct ufs_hba *hba,
  enum dev_cmd_type cmd_type, int timeout)
{
 struct ufshcd_lrb *lrbp;
 int err;
 int tag;
 struct completion wait;
 unsigned long flags;

 down_read(&hba->clk_scaling_lock);






 wait_event(hba->dev_cmd.tag_wq, ufshcd_get_dev_cmd_tag(hba, &tag));

 init_completion(&wait);
 lrbp = &hba->lrb[tag];
 WARN_ON(lrbp->cmd);
 err = ufshcd_compose_dev_cmd(hba, lrbp, cmd_type, tag);
 if (unlikely(err))
  goto out_put_tag;

 hba->dev_cmd.complete = &wait;

 ufshcd_add_query_upiu_trace(hba, tag, "query_send");

 wmb();
 spin_lock_irqsave(hba->host->host_lock, flags);
 ufshcd_vops_setup_xfer_req(hba, tag, (lrbp->cmd ? 1 : 0));
 ufshcd_send_command(hba, tag);
 spin_unlock_irqrestore(hba->host->host_lock, flags);

 err = ufshcd_wait_for_dev_cmd(hba, lrbp, timeout);

 ufshcd_add_query_upiu_trace(hba, tag,
   err ? "query_complete_err" : "query_complete");

out_put_tag:
 ufshcd_put_dev_cmd_tag(hba, tag);
 wake_up(&hba->dev_cmd.tag_wq);
 up_read(&hba->clk_scaling_lock);
 return err;
}
