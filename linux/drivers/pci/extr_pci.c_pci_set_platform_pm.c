
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_platform_pm_ops {int need_resume; int set_wakeup; int choose_state; int get_state; int set_state; int is_manageable; } ;


 int EINVAL ;
 struct pci_platform_pm_ops const* pci_platform_pm ;

int pci_set_platform_pm(const struct pci_platform_pm_ops *ops)
{
 if (!ops->is_manageable || !ops->set_state || !ops->get_state ||
     !ops->choose_state || !ops->set_wakeup || !ops->need_resume)
  return -EINVAL;
 pci_platform_pm = ops;
 return 0;
}
