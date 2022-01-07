
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_thermal_device {int soc_dts; } ;
struct pci_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int intel_soc_dts_iosf_interrupt_handler (int ) ;
 struct proc_thermal_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static irqreturn_t proc_thermal_pci_msi_irq(int irq, void *devid)
{
 struct proc_thermal_device *proc_priv;
 struct pci_dev *pdev = devid;

 proc_priv = pci_get_drvdata(pdev);

 intel_soc_dts_iosf_interrupt_handler(proc_priv->soc_dts);

 return IRQ_HANDLED;
}
