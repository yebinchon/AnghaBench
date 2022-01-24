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
struct ssb_gige {int /*<<< orphan*/  pci_ops; } ;
struct ssb_device {int dummy; } ;
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENODEV ; 
 struct ssb_gige* FUNC0 (struct ssb_device*) ; 
 int FUNC1 (struct ssb_device*) ; 

int FUNC2(struct ssb_device *sdev,
		     const struct pci_dev *pdev)
{
	struct ssb_gige *dev = FUNC0(sdev);

	if (pdev->bus->ops != &dev->pci_ops) {
		/* The PCI device is not on this SSB GigE bridge device. */
		return -ENODEV;
	}

	return FUNC1(sdev) + 2;
}