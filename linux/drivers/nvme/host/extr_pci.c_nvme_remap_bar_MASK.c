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
struct pci_dev {int dummy; } ;
struct nvme_dev {unsigned long bar_mapped_size; scalar_t__ bar; scalar_t__ dbs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ NVME_REG_DBS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 unsigned long FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nvme_dev *dev, unsigned long size)
{
	struct pci_dev *pdev = FUNC4(dev->dev);

	if (size <= dev->bar_mapped_size)
		return 0;
	if (size > FUNC2(pdev, 0))
		return -ENOMEM;
	if (dev->bar)
		FUNC1(dev->bar);
	dev->bar = FUNC0(FUNC3(pdev, 0), size);
	if (!dev->bar) {
		dev->bar_mapped_size = 0;
		return -ENOMEM;
	}
	dev->bar_mapped_size = size;
	dev->dbs = dev->bar + NVME_REG_DBS;

	return 0;
}