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
struct xen_pcibk_device {int dummy; } ;
struct pcistub_device {int /*<<< orphan*/  lock; struct pci_dev* dev; struct xen_pcibk_device* pdev; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcistub_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcistub_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct pci_dev *FUNC4(struct xen_pcibk_device *pdev,
						  struct pcistub_device *psdev)
{
	struct pci_dev *pci_dev = NULL;
	unsigned long flags;

	FUNC0(psdev);

	FUNC2(&psdev->lock, flags);
	if (!psdev->pdev) {
		psdev->pdev = pdev;
		pci_dev = psdev->dev;
	}
	FUNC3(&psdev->lock, flags);

	if (!pci_dev)
		FUNC1(psdev);

	return pci_dev;
}