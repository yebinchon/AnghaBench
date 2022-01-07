
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rapl_mmio_regs {int dummy; } ;
struct proc_thermal_device {int dummy; } ;
struct pci_dev {int dummy; } ;



__attribute__((used)) static int proc_thermal_rapl_add(struct pci_dev *pdev,
     struct proc_thermal_device *proc_priv,
     struct rapl_mmio_regs *rapl_regs)
{
 return 0;
}
