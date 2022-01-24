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
struct nvme_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ NVME_REG_DBS ; 
 scalar_t__ FUNC0 (struct nvme_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (struct pci_dev*,char*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nvme_dev *dev)
{
	struct pci_dev *pdev = FUNC3(dev->dev);

	if (FUNC2(pdev, "nvme"))
		return -ENODEV;

	if (FUNC0(dev, NVME_REG_DBS + 4096))
		goto release;

	return 0;
  release:
	FUNC1(pdev);
	return -ENODEV;
}