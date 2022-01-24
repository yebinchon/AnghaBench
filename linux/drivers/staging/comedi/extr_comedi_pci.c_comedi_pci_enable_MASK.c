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
struct comedi_device {int ioenabled; int /*<<< orphan*/  board_name; } ;

/* Variables and functions */
 int ENODEV ; 
 struct pci_dev* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 

int FUNC4(struct comedi_device *dev)
{
	struct pci_dev *pcidev = FUNC0(dev);
	int rc;

	if (!pcidev)
		return -ENODEV;

	rc = FUNC2(pcidev);
	if (rc < 0)
		return rc;

	rc = FUNC3(pcidev, dev->board_name);
	if (rc < 0)
		FUNC1(pcidev);
	else
		dev->ioenabled = true;

	return rc;
}