
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _sas_device {int list; } ;
struct MPT3SAS_ADAPTER {int sas_device_lock; int sas_device_list; } ;


 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int sas_device_get (struct _sas_device*) ;
 int sas_device_put (struct _sas_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sas_device_make_active(struct MPT3SAS_ADAPTER *ioc,
  struct _sas_device *sas_device)
{
 unsigned long flags;

 spin_lock_irqsave(&ioc->sas_device_lock, flags);
 if (!list_empty(&sas_device->list)) {
  list_del_init(&sas_device->list);
  sas_device_put(sas_device);
 }

 sas_device_get(sas_device);
 list_add_tail(&sas_device->list, &ioc->sas_device_list);

 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);
}
