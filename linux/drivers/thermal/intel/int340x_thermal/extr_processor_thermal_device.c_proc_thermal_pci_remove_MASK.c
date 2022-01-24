#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct proc_thermal_device {scalar_t__ soc_dts; } ;
struct pci_dev {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct proc_thermal_device* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct proc_thermal_device*) ; 

__attribute__((used)) static void  FUNC6(struct pci_dev *pdev)
{
	struct proc_thermal_device *proc_priv = FUNC3(pdev);

	if (proc_priv->soc_dts) {
		FUNC1(proc_priv->soc_dts);
		if (pdev->irq) {
			FUNC0(pdev->irq, pdev);
			FUNC2(pdev);
		}
	}
	FUNC4();
	FUNC5(proc_priv);
}