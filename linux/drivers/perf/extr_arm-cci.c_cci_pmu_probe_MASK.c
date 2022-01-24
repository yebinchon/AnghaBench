#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  pmu_lock; } ;
struct cci_pmu {int* irqs; TYPE_2__* model; int /*<<< orphan*/  cpu; int /*<<< orphan*/  active_events; int /*<<< orphan*/  reserve_mutex; TYPE_1__ hw_events; scalar_t__ nr_irqs; struct cci_pmu* base; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  CPUHP_AP_PERF_ARM_CCI_ONLINE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct cci_pmu*) ; 
 int FUNC2 (struct cci_pmu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cci_pmu* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct cci_pmu*,struct platform_device*) ; 
 int /*<<< orphan*/  cci_pmu_offline_cpu ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,int) ; 
 struct cci_pmu* FUNC9 (int /*<<< orphan*/ *,struct resource*) ; 
 struct cci_pmu* g_cci_pmu ; 
 scalar_t__ FUNC10 (int,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct platform_device*,int) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct resource *res;
	struct cci_pmu *cci_pmu;
	int i, ret, irq;

	cci_pmu = FUNC4(&pdev->dev);
	if (FUNC1(cci_pmu))
		return FUNC2(cci_pmu);

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	cci_pmu->base = FUNC9(&pdev->dev, res);
	if (FUNC1(cci_pmu->base))
		return -ENOMEM;

	/*
	 * CCI PMU has one overflow interrupt per counter; but some may be tied
	 * together to a common interrupt.
	 */
	cci_pmu->nr_irqs = 0;
	for (i = 0; i < FUNC0(cci_pmu->model); i++) {
		irq = FUNC12(pdev, i);
		if (irq < 0)
			break;

		if (FUNC10(irq, cci_pmu->irqs, cci_pmu->nr_irqs))
			continue;

		cci_pmu->irqs[cci_pmu->nr_irqs++] = irq;
	}

	/*
	 * Ensure that the device tree has as many interrupts as the number
	 * of counters.
	 */
	if (i < FUNC0(cci_pmu->model)) {
		FUNC8(&pdev->dev, "In-correct number of interrupts: %d, should be %d\n",
			i, FUNC0(cci_pmu->model));
		return -EINVAL;
	}

	FUNC16(&cci_pmu->hw_events.pmu_lock);
	FUNC11(&cci_pmu->reserve_mutex);
	FUNC3(&cci_pmu->active_events, 0);

	cci_pmu->cpu = FUNC15();
	g_cci_pmu = cci_pmu;
	FUNC7(CPUHP_AP_PERF_ARM_CCI_ONLINE,
				  "perf/arm/cci:online", NULL,
				  cci_pmu_offline_cpu);

	ret = FUNC5(cci_pmu, pdev);
	if (ret)
		goto error_pmu_init;

	FUNC14("ARM %s PMU driver probed", cci_pmu->model->name);
	return 0;

error_pmu_init:
	FUNC6(CPUHP_AP_PERF_ARM_CCI_ONLINE);
	g_cci_pmu = NULL;
	return ret;
}