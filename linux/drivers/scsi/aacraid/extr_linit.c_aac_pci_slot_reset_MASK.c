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
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t FUNC6(struct pci_dev *pdev)
{
	FUNC0(&pdev->dev, "aacraid: PCI error - slot reset\n");
	FUNC4(pdev);
	if (FUNC2(pdev)) {
		FUNC1(&pdev->dev,
			"aacraid: failed to enable slave\n");
		goto fail_device;
	}

	FUNC5(pdev);

	if (FUNC3(pdev)) {
		FUNC0(&pdev->dev, "pci_enable_device_mem failed\n");
		goto fail_device;
	}

	return PCI_ERS_RESULT_RECOVERED;

fail_device:
	FUNC0(&pdev->dev, "aacraid: PCI error - slot reset failed\n");
	return PCI_ERS_RESULT_DISCONNECT;
}