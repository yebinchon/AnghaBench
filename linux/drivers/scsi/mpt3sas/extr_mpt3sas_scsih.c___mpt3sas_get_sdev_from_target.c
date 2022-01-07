
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _sas_device {int dummy; } ;
struct MPT3SAS_TARGET {struct _sas_device* sas_dev; } ;
struct MPT3SAS_ADAPTER {int sas_device_lock; } ;


 int assert_spin_locked (int *) ;
 int sas_device_get (struct _sas_device*) ;

__attribute__((used)) static struct _sas_device *
__mpt3sas_get_sdev_from_target(struct MPT3SAS_ADAPTER *ioc,
  struct MPT3SAS_TARGET *tgt_priv)
{
 struct _sas_device *ret;

 assert_spin_locked(&ioc->sas_device_lock);

 ret = tgt_priv->sas_dev;
 if (ret)
  sas_device_get(ret);

 return ret;
}
