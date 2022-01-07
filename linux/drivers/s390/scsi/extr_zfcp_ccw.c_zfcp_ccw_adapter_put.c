
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int ref; } ;


 int kref_put (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int zfcp_adapter_release ;
 int zfcp_ccw_adapter_ref_lock ;

void zfcp_ccw_adapter_put(struct zfcp_adapter *adapter)
{
 unsigned long flags;

 spin_lock_irqsave(&zfcp_ccw_adapter_ref_lock, flags);
 kref_put(&adapter->ref, zfcp_adapter_release);
 spin_unlock_irqrestore(&zfcp_ccw_adapter_ref_lock, flags);
}
