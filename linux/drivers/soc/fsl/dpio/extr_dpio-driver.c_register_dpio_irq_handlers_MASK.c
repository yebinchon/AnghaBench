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
struct fsl_mc_device_irq {TYPE_1__* msi_desc; } ;
struct fsl_mc_device {int /*<<< orphan*/  dev; struct fsl_mc_device_irq** irqs; } ;
typedef  int /*<<< orphan*/  cpumask_t ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dpio_irq_handler ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct fsl_mc_device *dpio_dev, int cpu)
{
	int error;
	struct fsl_mc_device_irq *irq;
	cpumask_t mask;

	irq = dpio_dev->irqs[0];
	error = FUNC4(&dpio_dev->dev,
				 irq->msi_desc->irq,
				 dpio_irq_handler,
				 0,
				 FUNC3(&dpio_dev->dev),
				 &dpio_dev->dev);
	if (error < 0) {
		FUNC2(&dpio_dev->dev,
			"devm_request_irq() failed: %d\n",
			error);
		return error;
	}

	/* set the affinity hint */
	FUNC0(&mask);
	FUNC1(cpu, &mask);
	if (FUNC5(irq->msi_desc->irq, &mask))
		FUNC2(&dpio_dev->dev,
			"irq_set_affinity failed irq %d cpu %d\n",
			irq->msi_desc->irq, cpu);

	return 0;
}