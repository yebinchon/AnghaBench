
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int erp_lock; int erp_done_wqh; int status; int erp_running_head; int erp_ready_head; } ;


 int ZFCP_STATUS_ADAPTER_ERP_PENDING ;
 int atomic_andnot (int ,int *) ;
 scalar_t__ list_empty (int *) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void zfcp_erp_wakeup(struct zfcp_adapter *adapter)
{
 unsigned long flags;

 read_lock_irqsave(&adapter->erp_lock, flags);
 if (list_empty(&adapter->erp_ready_head) &&
     list_empty(&adapter->erp_running_head)) {
   atomic_andnot(ZFCP_STATUS_ADAPTER_ERP_PENDING,
       &adapter->status);
   wake_up(&adapter->erp_done_wqh);
 }
 read_unlock_irqrestore(&adapter->erp_lock, flags);
}
