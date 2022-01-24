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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DPM_FLAG_NEVER_SKIP ; 
 int DPM_FLAG_SMART_SUSPEND ; 
 int ENODEV ; 
 scalar_t__ PCI_EXP_TYPE_DOWNSTREAM ; 
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ; 
 scalar_t__ PCI_EXP_TYPE_UPSTREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *dev,
					const struct pci_device_id *id)
{
	int status;

	if (!FUNC2(dev) ||
	    ((FUNC3(dev) != PCI_EXP_TYPE_ROOT_PORT) &&
	     (FUNC3(dev) != PCI_EXP_TYPE_UPSTREAM) &&
	     (FUNC3(dev) != PCI_EXP_TYPE_DOWNSTREAM)))
		return -ENODEV;

	status = FUNC5(dev);
	if (status)
		return status;

	FUNC4(dev);

	FUNC0(&dev->dev, DPM_FLAG_NEVER_SKIP |
					   DPM_FLAG_SMART_SUSPEND);

	if (FUNC1(dev)) {
		/*
		 * Keep the port resumed 100ms to make sure things like
		 * config space accesses from userspace (lspci) will not
		 * cause the port to repeatedly suspend and resume.
		 */
		FUNC9(&dev->dev, 100);
		FUNC10(&dev->dev);
		FUNC7(&dev->dev);
		FUNC8(&dev->dev);
		FUNC6(&dev->dev);
	}

	return 0;
}