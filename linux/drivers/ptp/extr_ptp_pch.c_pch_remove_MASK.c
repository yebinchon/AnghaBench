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
struct pci_dev {scalar_t__ irq; int /*<<< orphan*/  dev; } ;
struct pch_dev {scalar_t__ mem_base; int /*<<< orphan*/  mem_size; int /*<<< orphan*/ * regs; int /*<<< orphan*/  ptp_clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct pch_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct pch_dev* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct pch_dev *chip = FUNC5(pdev);

	FUNC6(chip->ptp_clock);
	/* free the interrupt */
	if (pdev->irq != 0)
		FUNC1(pdev->irq, chip);

	/* unmap the virtual IO memory space */
	if (chip->regs != NULL) {
		FUNC2(chip->regs);
		chip->regs = NULL;
	}
	/* release the reserved IO memory space */
	if (chip->mem_base != 0) {
		FUNC7(chip->mem_base, chip->mem_size);
		chip->mem_base = 0;
	}
	FUNC4(pdev);
	FUNC3(chip);
	FUNC0(&pdev->dev, "complete\n");
}