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
struct xgene_msi_group {int /*<<< orphan*/  gic_irq; } ;
struct xgene_msi {struct xgene_msi_group* msi_groups; scalar_t__ num_cpus; } ;
typedef  int /*<<< orphan*/  cpumask_var_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NR_HW_IRQS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct xgene_msi_group*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 struct xgene_msi xgene_msi_ctrl ; 
 int /*<<< orphan*/  xgene_msi_isr ; 

__attribute__((used)) static int FUNC9(unsigned int cpu)
{
	struct xgene_msi *msi = &xgene_msi_ctrl;
	struct xgene_msi_group *msi_group;
	cpumask_var_t mask;
	int i;
	int err;

	for (i = cpu; i < NR_HW_IRQS; i += msi->num_cpus) {
		msi_group = &msi->msi_groups[i];
		if (!msi_group->gic_irq)
			continue;

		FUNC5(msi_group->gic_irq,
					xgene_msi_isr);
		err = FUNC7(msi_group->gic_irq, msi_group);
		if (err) {
			FUNC8("failed to register GIC IRQ handler\n");
			return -EINVAL;
		}
		/*
		 * Statically allocate MSI GIC IRQs to each CPU core.
		 * With 8-core X-Gene v1, 2 MSI GIC IRQs are allocated
		 * to each core.
		 */
		if (FUNC0(&mask, GFP_KERNEL)) {
			FUNC1(mask);
			FUNC2(cpu, mask);
			err = FUNC4(msi_group->gic_irq, mask);
			if (err)
				FUNC8("failed to set affinity for GIC IRQ");
			FUNC3(mask);
		} else {
			FUNC8("failed to alloc CPU mask for affinity\n");
			err = -EINVAL;
		}

		if (err) {
			FUNC6(msi_group->gic_irq,
							 NULL, NULL);
			return err;
		}
	}

	return 0;
}