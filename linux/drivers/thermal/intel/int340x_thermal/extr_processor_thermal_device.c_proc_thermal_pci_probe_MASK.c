#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rapl_mmio_regs {int dummy; } ;
struct proc_thermal_device {int /*<<< orphan*/ * soc_dts; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct pci_dev {scalar_t__ device; TYPE_1__ dev; scalar_t__ irq; } ;
struct TYPE_6__ {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  INTEL_SOC_DTS_INTERRUPT_MSI ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ PCI_DEVICE_ID_PROC_BSW_THERMAL ; 
 scalar_t__ PROC_THERMAL_PCI ; 
 scalar_t__ PROC_THERMAL_PLATFORM_DEV ; 
 TYPE_4__ dev_attr_tcc_offset_degree_celsius ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,struct proc_thermal_device*) ; 
 int FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  power_limit_attribute_group ; 
 int FUNC9 (TYPE_1__*,struct proc_thermal_device**) ; 
 scalar_t__ proc_thermal_emum_mode ; 
 int /*<<< orphan*/  proc_thermal_pci_msi_irq ; 
 int FUNC10 (struct pci_dev*,struct proc_thermal_device*,struct rapl_mmio_regs*) ; 
 int /*<<< orphan*/  FUNC11 (struct proc_thermal_device*) ; 
 int FUNC12 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pci_dev*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int  FUNC16(struct pci_dev *pdev,
				   const struct pci_device_id *id)
{
	struct proc_thermal_device *proc_priv;
	int ret;

	if (proc_thermal_emum_mode == PROC_THERMAL_PLATFORM_DEV) {
		FUNC1(&pdev->dev, "error: enumerated as platform dev\n");
		return -ENODEV;
	}

	ret = FUNC8(pdev);
	if (ret < 0) {
		FUNC1(&pdev->dev, "error: could not enable device\n");
		return ret;
	}

	ret = FUNC9(&pdev->dev, &proc_priv);
	if (ret)
		return ret;

	ret = FUNC10(pdev, proc_priv,
				(struct rapl_mmio_regs *)id->driver_data);
	if (ret) {
		FUNC1(&pdev->dev, "failed to add RAPL MMIO interface\n");
		FUNC11(proc_priv);
		return ret;
	}

	FUNC7(pdev, proc_priv);
	proc_thermal_emum_mode = PROC_THERMAL_PCI;

	if (pdev->device == PCI_DEVICE_ID_PROC_BSW_THERMAL) {
		/*
		 * Enumerate additional DTS sensors available via IOSF.
		 * But we are not treating as a failure condition, if
		 * there are no aux DTSs enabled or fails. This driver
		 * already exposes sensors, which can be accessed via
		 * ACPI/MSR. So we don't want to fail for auxiliary DTSs.
		 */
		proc_priv->soc_dts = FUNC4(
					INTEL_SOC_DTS_INTERRUPT_MSI, 2, 0);

		if (!FUNC0(proc_priv->soc_dts) && pdev->irq) {
			ret = FUNC6(pdev);
			if (!ret) {
				ret = FUNC12(pdev->irq, NULL,
						proc_thermal_pci_msi_irq,
						IRQF_ONESHOT, "proc_thermal",
						pdev);
				if (ret) {
					FUNC3(
							proc_priv->soc_dts);
					FUNC5(pdev);
					proc_priv->soc_dts = NULL;
				}
			}
		} else
			FUNC1(&pdev->dev, "No auxiliary DTSs enabled\n");
	}

	FUNC2(&pdev->dev, "Creating sysfs group for PROC_THERMAL_PCI\n");

	ret = FUNC13(&pdev->dev.kobj, &dev_attr_tcc_offset_degree_celsius.attr);
	if (ret)
		return ret;

	ret = FUNC14(&pdev->dev.kobj, &power_limit_attribute_group);
	if (ret)
		FUNC15(&pdev->dev.kobj, &dev_attr_tcc_offset_degree_celsius.attr);

	return ret;
}