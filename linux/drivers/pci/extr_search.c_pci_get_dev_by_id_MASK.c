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
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct device* FUNC1 (int /*<<< orphan*/ *,struct device*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  match_pci_dev_by_id ; 
 int /*<<< orphan*/  pci_bus_type ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct pci_dev* FUNC4 (struct device*) ; 

__attribute__((used)) static struct pci_dev *FUNC5(const struct pci_device_id *id,
					 struct pci_dev *from)
{
	struct device *dev;
	struct device *dev_start = NULL;
	struct pci_dev *pdev = NULL;

	FUNC0(FUNC2());
	if (from)
		dev_start = &from->dev;
	dev = FUNC1(&pci_bus_type, dev_start, (void *)id,
			      match_pci_dev_by_id);
	if (dev)
		pdev = FUNC4(dev);
	FUNC3(from);
	return pdev;
}