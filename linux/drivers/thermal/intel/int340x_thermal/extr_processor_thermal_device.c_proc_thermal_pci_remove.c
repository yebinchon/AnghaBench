
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_thermal_device {scalar_t__ soc_dts; } ;
struct pci_dev {scalar_t__ irq; } ;


 int free_irq (scalar_t__,struct pci_dev*) ;
 int intel_soc_dts_iosf_exit (scalar_t__) ;
 int pci_disable_msi (struct pci_dev*) ;
 struct proc_thermal_device* pci_get_drvdata (struct pci_dev*) ;
 int proc_thermal_rapl_remove () ;
 int proc_thermal_remove (struct proc_thermal_device*) ;

__attribute__((used)) static void proc_thermal_pci_remove(struct pci_dev *pdev)
{
 struct proc_thermal_device *proc_priv = pci_get_drvdata(pdev);

 if (proc_priv->soc_dts) {
  intel_soc_dts_iosf_exit(proc_priv->soc_dts);
  if (pdev->irq) {
   free_irq(pdev->irq, pdev);
   pci_disable_msi(pdev);
  }
 }
 proc_thermal_rapl_remove();
 proc_thermal_remove(proc_priv);
}
