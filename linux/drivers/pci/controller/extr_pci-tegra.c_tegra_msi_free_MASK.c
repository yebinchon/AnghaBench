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
struct TYPE_2__ {struct device* dev; } ;
struct tegra_msi {int /*<<< orphan*/  lock; int /*<<< orphan*/  used; TYPE_1__ chip; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tegra_msi *chip, unsigned long irq)
{
	struct device *dev = chip->chip.dev;

	FUNC2(&chip->lock);

	if (!FUNC4(irq, chip->used))
		FUNC1(dev, "trying to free unused MSI#%lu\n", irq);
	else
		FUNC0(irq, chip->used);

	FUNC3(&chip->lock);
}