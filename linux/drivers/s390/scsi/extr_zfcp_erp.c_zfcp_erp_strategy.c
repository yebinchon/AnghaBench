
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {int status; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int ref; int erp_lock; int erp_low_mem_count; int erp_total_count; } ;
typedef enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;
 int ZFCP_STATUS_ERP_DISMISSED ;
 int ZFCP_STATUS_ERP_LOWMEM ;
 int ZFCP_STATUS_ERP_TIMEDOUT ;
 int _zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;
 int zfcp_adapter_release ;
 int zfcp_erp_action_cleanup (struct zfcp_erp_action*,int) ;
 int zfcp_erp_action_dequeue (struct zfcp_erp_action*) ;
 int zfcp_erp_action_to_running (struct zfcp_erp_action*) ;
 int zfcp_erp_strategy_check_fsfreq (struct zfcp_erp_action*) ;
 int zfcp_erp_strategy_check_target (struct zfcp_erp_action*,int) ;
 int zfcp_erp_strategy_do_action (struct zfcp_erp_action*) ;
 int zfcp_erp_strategy_followup_failed (struct zfcp_erp_action*) ;
 int zfcp_erp_strategy_followup_success (struct zfcp_erp_action*) ;
 int zfcp_erp_strategy_memwait (struct zfcp_erp_action*) ;
 int zfcp_erp_strategy_statechange (struct zfcp_erp_action*,int) ;

__attribute__((used)) static enum zfcp_erp_act_result zfcp_erp_strategy(
 struct zfcp_erp_action *erp_action)
{
 enum zfcp_erp_act_result result;
 unsigned long flags;
 struct zfcp_adapter *adapter = erp_action->adapter;

 kref_get(&adapter->ref);

 write_lock_irqsave(&adapter->erp_lock, flags);
 zfcp_erp_strategy_check_fsfreq(erp_action);

 if (erp_action->status & ZFCP_STATUS_ERP_DISMISSED) {
  zfcp_erp_action_dequeue(erp_action);
  result = 132;
  goto unlock;
 }

 if (erp_action->status & ZFCP_STATUS_ERP_TIMEDOUT) {
  result = 130;
  goto check_target;
 }

 zfcp_erp_action_to_running(erp_action);


 write_unlock_irqrestore(&adapter->erp_lock, flags);
 result = zfcp_erp_strategy_do_action(erp_action);
 write_lock_irqsave(&adapter->erp_lock, flags);

 if (erp_action->status & ZFCP_STATUS_ERP_DISMISSED)
  result = 133;

 switch (result) {
 case 129:
  if (!(erp_action->status & ZFCP_STATUS_ERP_LOWMEM)) {
   ++adapter->erp_low_mem_count;
   erp_action->status |= ZFCP_STATUS_ERP_LOWMEM;
  }
  if (adapter->erp_total_count == adapter->erp_low_mem_count)
   _zfcp_erp_adapter_reopen(adapter, 0, "erstgy1");
  else {
   zfcp_erp_strategy_memwait(erp_action);
   result = 133;
  }
  goto unlock;

 case 133:
  if (erp_action->status & ZFCP_STATUS_ERP_LOWMEM) {
   --adapter->erp_low_mem_count;
   erp_action->status &= ~ZFCP_STATUS_ERP_LOWMEM;
  }
  goto unlock;
 case 128:
 case 130:
 case 131:
 case 132:

  break;
 }

check_target:
 result = zfcp_erp_strategy_check_target(erp_action, result);
 zfcp_erp_action_dequeue(erp_action);
 result = zfcp_erp_strategy_statechange(erp_action, result);
 if (result == 131)
  goto unlock;
 if (result == 128)
  zfcp_erp_strategy_followup_success(erp_action);
 if (result == 130)
  zfcp_erp_strategy_followup_failed(erp_action);

 unlock:
 write_unlock_irqrestore(&adapter->erp_lock, flags);

 if (result != 133)
  zfcp_erp_action_cleanup(erp_action, result);

 kref_put(&adapter->ref, zfcp_adapter_release);
 return result;
}
