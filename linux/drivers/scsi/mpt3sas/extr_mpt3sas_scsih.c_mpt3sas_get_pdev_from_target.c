
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _pcie_device {int dummy; } ;
struct MPT3SAS_TARGET {int dummy; } ;
struct MPT3SAS_ADAPTER {int pcie_device_lock; } ;


 struct _pcie_device* __mpt3sas_get_pdev_from_target (struct MPT3SAS_ADAPTER*,struct MPT3SAS_TARGET*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct _pcie_device *
mpt3sas_get_pdev_from_target(struct MPT3SAS_ADAPTER *ioc,
 struct MPT3SAS_TARGET *tgt_priv)
{
 struct _pcie_device *ret;
 unsigned long flags;

 spin_lock_irqsave(&ioc->pcie_device_lock, flags);
 ret = __mpt3sas_get_pdev_from_target(ioc, tgt_priv);
 spin_unlock_irqrestore(&ioc->pcie_device_lock, flags);

 return ret;
}
