
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _pcie_device {int list; } ;
struct MPT3SAS_ADAPTER {int pcie_device_lock; int pcie_device_list; } ;


 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int pcie_device_get (struct _pcie_device*) ;
 int pcie_device_put (struct _pcie_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pcie_device_make_active(struct MPT3SAS_ADAPTER *ioc,
  struct _pcie_device *pcie_device)
{
 unsigned long flags;

 spin_lock_irqsave(&ioc->pcie_device_lock, flags);

 if (!list_empty(&pcie_device->list)) {
  list_del_init(&pcie_device->list);
  pcie_device_put(pcie_device);
 }
 pcie_device_get(pcie_device);
 list_add_tail(&pcie_device->list, &ioc->pcie_device_list);

 spin_unlock_irqrestore(&ioc->pcie_device_lock, flags);
}
