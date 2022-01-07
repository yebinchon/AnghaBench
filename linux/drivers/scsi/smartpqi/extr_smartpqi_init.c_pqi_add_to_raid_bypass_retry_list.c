
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_io_request {int request_list_entry; } ;
struct pqi_ctrl_info {int raid_bypass_retry_list_lock; int raid_bypass_retry_list; } ;


 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void pqi_add_to_raid_bypass_retry_list(
 struct pqi_ctrl_info *ctrl_info,
 struct pqi_io_request *io_request, bool at_head)
{
 unsigned long flags;

 spin_lock_irqsave(&ctrl_info->raid_bypass_retry_list_lock, flags);
 if (at_head)
  list_add(&io_request->request_list_entry,
   &ctrl_info->raid_bypass_retry_list);
 else
  list_add_tail(&io_request->request_list_entry,
   &ctrl_info->raid_bypass_retry_list);
 spin_unlock_irqrestore(&ctrl_info->raid_bypass_retry_list_lock, flags);
}
