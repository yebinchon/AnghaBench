
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct _sas_device {int dummy; } ;
struct MPT3SAS_ADAPTER {int sas_device_lock; } ;


 struct _sas_device* __mpt3sas_get_sdev_by_handle (struct MPT3SAS_ADAPTER*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct _sas_device *
mpt3sas_get_sdev_by_handle(struct MPT3SAS_ADAPTER *ioc, u16 handle)
{
 struct _sas_device *sas_device;
 unsigned long flags;

 spin_lock_irqsave(&ioc->sas_device_lock, flags);
 sas_device = __mpt3sas_get_sdev_by_handle(ioc, handle);
 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);

 return sas_device;
}
