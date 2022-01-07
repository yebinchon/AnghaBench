
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _pcie_device {int dummy; } ;
struct MPT3SAS_TARGET {struct _pcie_device* pcie_dev; } ;
struct MPT3SAS_ADAPTER {int pcie_device_lock; } ;


 int assert_spin_locked (int *) ;
 int pcie_device_get (struct _pcie_device*) ;

__attribute__((used)) static struct _pcie_device *
__mpt3sas_get_pdev_from_target(struct MPT3SAS_ADAPTER *ioc,
 struct MPT3SAS_TARGET *tgt_priv)
{
 struct _pcie_device *ret;

 assert_spin_locked(&ioc->pcie_device_lock);

 ret = tgt_priv->pcie_dev;
 if (ret)
  pcie_device_get(ret);

 return ret;
}
