
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rapl_mmio_regs {int dummy; } ;
struct proc_thermal_device {int * soc_dts; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct TYPE_5__ {int kobj; } ;
struct pci_dev {scalar_t__ device; TYPE_1__ dev; scalar_t__ irq; } ;
struct TYPE_6__ {int attr; } ;


 int ENODEV ;
 int INTEL_SOC_DTS_INTERRUPT_MSI ;
 int IRQF_ONESHOT ;
 int IS_ERR (int *) ;
 scalar_t__ PCI_DEVICE_ID_PROC_BSW_THERMAL ;
 scalar_t__ PROC_THERMAL_PCI ;
 scalar_t__ PROC_THERMAL_PLATFORM_DEV ;
 TYPE_4__ dev_attr_tcc_offset_degree_celsius ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*) ;
 int intel_soc_dts_iosf_exit (int *) ;
 int * intel_soc_dts_iosf_init (int ,int,int ) ;
 int pci_disable_msi (struct pci_dev*) ;
 int pci_enable_msi (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct proc_thermal_device*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int power_limit_attribute_group ;
 int proc_thermal_add (TYPE_1__*,struct proc_thermal_device**) ;
 scalar_t__ proc_thermal_emum_mode ;
 int proc_thermal_pci_msi_irq ;
 int proc_thermal_rapl_add (struct pci_dev*,struct proc_thermal_device*,struct rapl_mmio_regs*) ;
 int proc_thermal_remove (struct proc_thermal_device*) ;
 int request_threaded_irq (scalar_t__,int *,int ,int ,char*,struct pci_dev*) ;
 int sysfs_create_file (int *,int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_file (int *,int *) ;

__attribute__((used)) static int proc_thermal_pci_probe(struct pci_dev *pdev,
       const struct pci_device_id *id)
{
 struct proc_thermal_device *proc_priv;
 int ret;

 if (proc_thermal_emum_mode == PROC_THERMAL_PLATFORM_DEV) {
  dev_err(&pdev->dev, "error: enumerated as platform dev\n");
  return -ENODEV;
 }

 ret = pcim_enable_device(pdev);
 if (ret < 0) {
  dev_err(&pdev->dev, "error: could not enable device\n");
  return ret;
 }

 ret = proc_thermal_add(&pdev->dev, &proc_priv);
 if (ret)
  return ret;

 ret = proc_thermal_rapl_add(pdev, proc_priv,
    (struct rapl_mmio_regs *)id->driver_data);
 if (ret) {
  dev_err(&pdev->dev, "failed to add RAPL MMIO interface\n");
  proc_thermal_remove(proc_priv);
  return ret;
 }

 pci_set_drvdata(pdev, proc_priv);
 proc_thermal_emum_mode = PROC_THERMAL_PCI;

 if (pdev->device == PCI_DEVICE_ID_PROC_BSW_THERMAL) {







  proc_priv->soc_dts = intel_soc_dts_iosf_init(
     INTEL_SOC_DTS_INTERRUPT_MSI, 2, 0);

  if (!IS_ERR(proc_priv->soc_dts) && pdev->irq) {
   ret = pci_enable_msi(pdev);
   if (!ret) {
    ret = request_threaded_irq(pdev->irq, ((void*)0),
      proc_thermal_pci_msi_irq,
      IRQF_ONESHOT, "proc_thermal",
      pdev);
    if (ret) {
     intel_soc_dts_iosf_exit(
       proc_priv->soc_dts);
     pci_disable_msi(pdev);
     proc_priv->soc_dts = ((void*)0);
    }
   }
  } else
   dev_err(&pdev->dev, "No auxiliary DTSs enabled\n");
 }

 dev_info(&pdev->dev, "Creating sysfs group for PROC_THERMAL_PCI\n");

 ret = sysfs_create_file(&pdev->dev.kobj, &dev_attr_tcc_offset_degree_celsius.attr);
 if (ret)
  return ret;

 ret = sysfs_create_group(&pdev->dev.kobj, &power_limit_attribute_group);
 if (ret)
  sysfs_remove_file(&pdev->dev.kobj, &dev_attr_tcc_offset_degree_celsius.attr);

 return ret;
}
