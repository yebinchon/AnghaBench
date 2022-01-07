
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct _sas_device {int list; } ;
struct MPT3SAS_ADAPTER {int sas_device_lock; scalar_t__ shost_recovery; } ;


 struct _sas_device* __mpt3sas_get_sdev_by_addr (struct MPT3SAS_ADAPTER*,int ) ;
 int _scsih_remove_device (struct MPT3SAS_ADAPTER*,struct _sas_device*) ;
 int list_del_init (int *) ;
 int sas_device_put (struct _sas_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
mpt3sas_device_remove_by_sas_address(struct MPT3SAS_ADAPTER *ioc,
 u64 sas_address)
{
 struct _sas_device *sas_device;
 unsigned long flags;

 if (ioc->shost_recovery)
  return;

 spin_lock_irqsave(&ioc->sas_device_lock, flags);
 sas_device = __mpt3sas_get_sdev_by_addr(ioc, sas_address);
 if (sas_device) {
  list_del_init(&sas_device->list);
  sas_device_put(sas_device);
 }
 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);
 if (sas_device) {
  _scsih_remove_device(ioc, sas_device);
  sas_device_put(sas_device);
 }
}
