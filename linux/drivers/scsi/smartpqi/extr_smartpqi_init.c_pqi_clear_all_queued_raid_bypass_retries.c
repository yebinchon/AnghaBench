
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int raid_bypass_retry_list_lock; int raid_bypass_retry_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pqi_clear_all_queued_raid_bypass_retries(
 struct pqi_ctrl_info *ctrl_info)
{
 unsigned long flags;

 spin_lock_irqsave(&ctrl_info->raid_bypass_retry_list_lock, flags);
 INIT_LIST_HEAD(&ctrl_info->raid_bypass_retry_list);
 spin_unlock_irqrestore(&ctrl_info->raid_bypass_retry_list_lock, flags);
}
