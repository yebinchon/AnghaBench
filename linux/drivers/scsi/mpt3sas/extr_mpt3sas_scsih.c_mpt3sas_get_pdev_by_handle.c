
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct _pcie_device {int dummy; } ;
struct MPT3SAS_ADAPTER {int pcie_device_lock; } ;


 struct _pcie_device* __mpt3sas_get_pdev_by_handle (struct MPT3SAS_ADAPTER*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct _pcie_device *
mpt3sas_get_pdev_by_handle(struct MPT3SAS_ADAPTER *ioc, u16 handle)
{
 struct _pcie_device *pcie_device;
 unsigned long flags;

 spin_lock_irqsave(&ioc->pcie_device_lock, flags);
 pcie_device = __mpt3sas_get_pdev_by_handle(ioc, handle);
 spin_unlock_irqrestore(&ioc->pcie_device_lock, flags);

 return pcie_device;
}
