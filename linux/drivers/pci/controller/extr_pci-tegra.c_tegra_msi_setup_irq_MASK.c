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
struct tegra_msi {int /*<<< orphan*/  phys; int /*<<< orphan*/  domain; } ;
struct pci_dev {int dummy; } ;
struct msi_msg {int data; int /*<<< orphan*/  address_hi; int /*<<< orphan*/  address_lo; } ;
struct msi_desc {int dummy; } ;
struct msi_controller {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct msi_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct msi_msg*) ; 
 int FUNC4 (struct tegra_msi*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_msi*,int) ; 
 struct tegra_msi* FUNC6 (struct msi_controller*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct msi_controller *chip,
			       struct pci_dev *pdev, struct msi_desc *desc)
{
	struct tegra_msi *msi = FUNC6(chip);
	struct msi_msg msg;
	unsigned int irq;
	int hwirq;

	hwirq = FUNC4(msi);
	if (hwirq < 0)
		return hwirq;

	irq = FUNC0(msi->domain, hwirq);
	if (!irq) {
		FUNC5(msi, hwirq);
		return -EINVAL;
	}

	FUNC1(irq, desc);

	msg.address_lo = FUNC2(msi->phys);
	msg.address_hi = FUNC7(msi->phys);
	msg.data = hwirq;

	FUNC3(irq, &msg);

	return 0;
}