
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int ref; } ;
struct ccw_device {int dev; } ;


 struct zfcp_adapter* dev_get_drvdata (int *) ;
 int kref_get (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int zfcp_ccw_adapter_ref_lock ;

struct zfcp_adapter *zfcp_ccw_adapter_by_cdev(struct ccw_device *cdev)
{
 struct zfcp_adapter *adapter;
 unsigned long flags;

 spin_lock_irqsave(&zfcp_ccw_adapter_ref_lock, flags);
 adapter = dev_get_drvdata(&cdev->dev);
 if (adapter)
  kref_get(&adapter->ref);
 spin_unlock_irqrestore(&zfcp_ccw_adapter_ref_lock, flags);
 return adapter;
}
