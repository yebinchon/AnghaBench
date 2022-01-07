
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _raid_device {int list; } ;
struct MPT3SAS_ADAPTER {int raid_device_lock; } ;


 int kfree (struct _raid_device*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_raid_device_remove(struct MPT3SAS_ADAPTER *ioc,
 struct _raid_device *raid_device)
{
 unsigned long flags;

 spin_lock_irqsave(&ioc->raid_device_lock, flags);
 list_del(&raid_device->list);
 kfree(raid_device);
 spin_unlock_irqrestore(&ioc->raid_device_lock, flags);
}
