#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct pci_dev {int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,char*,...) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev, const char *reason)
{
	struct pci_dev *parent = FUNC3(pdev->dev.parent);

	FUNC2(pdev, "Potentially misrouted IRQ (Bridge %s %04x:%04x)\n",
		FUNC1(&parent->dev), parent->vendor, parent->device);
	FUNC2(pdev, "%s\n", reason);
	FUNC2(pdev, "Please report to linux-kernel@vger.kernel.org\n");
	FUNC0(1);
}