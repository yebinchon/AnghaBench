
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int ktime_t ;


 int current ;
 scalar_t__ initcall_debug ;
 int ktime_get () ;
 int pci_info (struct pci_dev*,char*,void (*) (struct pci_dev*),int ) ;
 int task_pid_nr (int ) ;

__attribute__((used)) static ktime_t fixup_debug_start(struct pci_dev *dev,
     void (*fn)(struct pci_dev *dev))
{
 if (initcall_debug)
  pci_info(dev, "calling  %pS @ %i\n", fn, task_pid_nr(current));

 return ktime_get();
}
