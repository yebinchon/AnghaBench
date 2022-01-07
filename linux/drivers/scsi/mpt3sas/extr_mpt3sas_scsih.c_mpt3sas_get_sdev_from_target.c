
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _sas_device {int dummy; } ;
struct MPT3SAS_TARGET {int dummy; } ;
struct MPT3SAS_ADAPTER {int sas_device_lock; } ;


 struct _sas_device* __mpt3sas_get_sdev_from_target (struct MPT3SAS_ADAPTER*,struct MPT3SAS_TARGET*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct _sas_device *
mpt3sas_get_sdev_from_target(struct MPT3SAS_ADAPTER *ioc,
  struct MPT3SAS_TARGET *tgt_priv)
{
 struct _sas_device *ret;
 unsigned long flags;

 spin_lock_irqsave(&ioc->sas_device_lock, flags);
 ret = __mpt3sas_get_sdev_from_target(ioc, tgt_priv);
 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);

 return ret;
}
