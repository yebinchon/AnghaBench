
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {unsigned long status; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int erp_lock; } ;


 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ zfcp_erp_action_is_running (struct zfcp_erp_action*) ;
 int zfcp_erp_action_ready (struct zfcp_erp_action*) ;

void zfcp_erp_notify(struct zfcp_erp_action *erp_action, unsigned long set_mask)
{
 struct zfcp_adapter *adapter = erp_action->adapter;
 unsigned long flags;

 write_lock_irqsave(&adapter->erp_lock, flags);
 if (zfcp_erp_action_is_running(erp_action)) {
  erp_action->status |= set_mask;
  zfcp_erp_action_ready(erp_action);
 }
 write_unlock_irqrestore(&adapter->erp_lock, flags);
}
