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
struct iproc_pcie {int /*<<< orphan*/  dev; } ;
struct iproc_msi {int nr_irqs; TYPE_1__* grps; scalar_t__ nr_cpus; struct iproc_pcie* pcie; } ;
typedef  int /*<<< orphan*/  cpumask_var_t ;
struct TYPE_2__ {int /*<<< orphan*/  gic_irq; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iproc_msi_handler ; 
 int /*<<< orphan*/  FUNC5 (struct iproc_msi*,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct iproc_msi *msi, unsigned int cpu)
{
	int i, ret;
	cpumask_var_t mask;
	struct iproc_pcie *pcie = msi->pcie;

	for (i = cpu; i < msi->nr_irqs; i += msi->nr_cpus) {
		FUNC7(msi->grps[i].gic_irq,
						 iproc_msi_handler,
						 &msi->grps[i]);
		/* Dedicate GIC interrupt to each CPU core */
		if (FUNC0(&mask, GFP_KERNEL)) {
			FUNC1(mask);
			FUNC2(cpu, mask);
			ret = FUNC6(msi->grps[i].gic_irq, mask);
			if (ret)
				FUNC3(pcie->dev,
					"failed to set affinity for IRQ%d\n",
					msi->grps[i].gic_irq);
			FUNC4(mask);
		} else {
			FUNC3(pcie->dev, "failed to alloc CPU mask\n");
			ret = -EINVAL;
		}

		if (ret) {
			/* Free all configured/unconfigured IRQs */
			FUNC5(msi, cpu);
			return ret;
		}
	}

	return 0;
}