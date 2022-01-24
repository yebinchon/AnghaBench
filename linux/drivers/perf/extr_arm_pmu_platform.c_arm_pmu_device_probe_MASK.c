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
struct pmu_probe_info {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int (* data ) (struct arm_pmu*) ;} ;
struct device_node {int dummy; } ;
struct arm_pmu {int secure_access; int /*<<< orphan*/  supported_cpus; struct platform_device* plat_device; } ;
typedef  int (* armpmu_init_fn ) (struct arm_pmu*) ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARM64 ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct arm_pmu* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct arm_pmu*) ; 
 int /*<<< orphan*/  FUNC3 (struct arm_pmu*) ; 
 int FUNC4 (struct arm_pmu*) ; 
 int FUNC5 (struct arm_pmu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC7 (struct of_device_id const*,struct device_node*) ; 
 int FUNC8 (struct device_node*,char*) ; 
 int FUNC9 (struct arm_pmu*) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (struct arm_pmu*,struct pmu_probe_info const*) ; 

int FUNC13(struct platform_device *pdev,
			 const struct of_device_id *of_table,
			 const struct pmu_probe_info *probe_table)
{
	const struct of_device_id *of_id;
	armpmu_init_fn init_fn;
	struct device_node *node = pdev->dev.of_node;
	struct arm_pmu *pmu;
	int ret = -ENODEV;

	pmu = FUNC1();
	if (!pmu)
		return -ENOMEM;

	pmu->plat_device = pdev;

	ret = FUNC9(pmu);
	if (ret)
		goto out_free;

	if (node && (of_id = FUNC7(of_table, pdev->dev.of_node))) {
		init_fn = of_id->data;

		pmu->secure_access = FUNC8(pdev->dev.of_node,
							   "secure-reg-access");

		/* arm64 systems boot only as non-secure */
		if (FUNC0(CONFIG_ARM64) && pmu->secure_access) {
			FUNC11("ignoring \"secure-reg-access\" property for arm64\n");
			pmu->secure_access = false;
		}

		ret = init_fn(pmu);
	} else if (probe_table) {
		FUNC6(&pmu->supported_cpus);
		ret = FUNC12(pmu, probe_table);
	}

	if (ret) {
		FUNC10("%pOF: failed to probe PMU!\n", node);
		goto out_free;
	}

	ret = FUNC5(pmu);
	if (ret)
		goto out_free_irqs;

	ret = FUNC4(pmu);
	if (ret)
		goto out_free;

	return 0;

out_free_irqs:
	FUNC3(pmu);
out_free:
	FUNC10("%pOF: failed to register PMU devices!\n", node);
	FUNC2(pmu);
	return ret;
}