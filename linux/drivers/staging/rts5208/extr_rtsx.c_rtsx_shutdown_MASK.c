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
struct rtsx_dev {int irq; struct rtsx_chip* chip; } ;
struct rtsx_chip {scalar_t__ msi_en; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM_S1 ; 
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct rtsx_dev* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pci)
{
	struct rtsx_dev *dev = FUNC3(pci);
	struct rtsx_chip *chip;

	if (!dev)
		return;

	chip = dev->chip;

	FUNC4(chip, PM_S1);

	if (dev->irq >= 0) {
		FUNC0(dev->irq, (void *)dev);
		dev->irq = -1;
	}

	if (chip->msi_en)
		FUNC2(pci);

	FUNC1(pci);
}