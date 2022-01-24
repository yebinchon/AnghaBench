#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xgene_pmu_data {int id; } ;
struct xgene_pmu {int version; int irq; int mcb_active_mask; int mc_active_mask; int /*<<< orphan*/  node; TYPE_1__* ops; int /*<<< orphan*/  lock; int /*<<< orphan*/  pcppmu_csr; int /*<<< orphan*/  mcpmus; int /*<<< orphan*/  mcbpmus; int /*<<< orphan*/  iobpmus; int /*<<< orphan*/  l3cpmus; int /*<<< orphan*/ * dev; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* unmask_int ) (struct xgene_pmu*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_NOBALANCING ; 
 int IRQF_NO_THREAD ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int PCP_PMU_V3 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct acpi_device_id* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct resource*) ; 
 struct xgene_pmu* FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct xgene_pmu*) ; 
 struct of_device_id* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct xgene_pmu*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct xgene_pmu*) ; 
 int /*<<< orphan*/  xgene_pmu_acpi_match ; 
 int /*<<< orphan*/  xgene_pmu_isr ; 
 int /*<<< orphan*/  xgene_pmu_of_match ; 
 int /*<<< orphan*/  xgene_pmu_offline_cpu ; 
 int /*<<< orphan*/  xgene_pmu_online_cpu ; 
 TYPE_1__ xgene_pmu_ops ; 
 int FUNC21 (struct xgene_pmu*,struct platform_device*) ; 
 int FUNC22 (struct xgene_pmu*,struct platform_device*) ; 
 TYPE_1__ xgene_pmu_v3_ops ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	const struct xgene_pmu_data *dev_data;
	const struct of_device_id *of_id;
	struct xgene_pmu *xgene_pmu;
	struct resource *res;
	int irq, rc;
	int version;

	/* Install a hook to update the reader CPU in case it goes offline */
	rc = FUNC5(CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE,
				      "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE",
				      xgene_pmu_online_cpu,
				      xgene_pmu_offline_cpu);
	if (rc)
		return rc;

	xgene_pmu = FUNC13(&pdev->dev, sizeof(*xgene_pmu), GFP_KERNEL);
	if (!xgene_pmu)
		return -ENOMEM;
	xgene_pmu->dev = &pdev->dev;
	FUNC18(pdev, xgene_pmu);

	version = -EINVAL;
	of_id = FUNC15(xgene_pmu_of_match, &pdev->dev);
	if (of_id) {
		dev_data = (const struct xgene_pmu_data *) of_id->data;
		version = dev_data->id;
	}

#ifdef CONFIG_ACPI
	if (ACPI_COMPANION(&pdev->dev)) {
		const struct acpi_device_id *acpi_id;

		acpi_id = acpi_match_device(xgene_pmu_acpi_match, &pdev->dev);
		if (acpi_id)
			version = (int) acpi_id->driver_data;
	}
#endif
	if (version < 0)
		return -ENODEV;

	if (version == PCP_PMU_V3)
		xgene_pmu->ops = &xgene_pmu_v3_ops;
	else
		xgene_pmu->ops = &xgene_pmu_ops;

	FUNC1(&xgene_pmu->l3cpmus);
	FUNC1(&xgene_pmu->iobpmus);
	FUNC1(&xgene_pmu->mcbpmus);
	FUNC1(&xgene_pmu->mcpmus);

	xgene_pmu->version = version;
	FUNC9(&pdev->dev, "X-Gene PMU version %d\n", xgene_pmu->version);

	res = FUNC17(pdev, IORESOURCE_MEM, 0);
	xgene_pmu->pcppmu_csr = FUNC12(&pdev->dev, res);
	if (FUNC2(xgene_pmu->pcppmu_csr)) {
		FUNC8(&pdev->dev, "ioremap failed for PCP PMU resource\n");
		return FUNC3(xgene_pmu->pcppmu_csr);
	}

	irq = FUNC16(pdev, 0);
	if (irq < 0)
		return -EINVAL;

	rc = FUNC14(&pdev->dev, irq, xgene_pmu_isr,
				IRQF_NOBALANCING | IRQF_NO_THREAD,
				FUNC10(&pdev->dev), xgene_pmu);
	if (rc) {
		FUNC8(&pdev->dev, "Could not request IRQ %d\n", irq);
		return rc;
	}

	xgene_pmu->irq = irq;

	FUNC19(&xgene_pmu->lock);

	/* Check for active MCBs and MCUs */
	rc = FUNC21(xgene_pmu, pdev);
	if (rc) {
		FUNC11(&pdev->dev, "Unknown MCB/MCU active status\n");
		xgene_pmu->mcb_active_mask = 0x1;
		xgene_pmu->mc_active_mask = 0x1;
	}

	/* Add this instance to the list used by the hotplug callback */
	rc = FUNC6(CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE,
				      &xgene_pmu->node);
	if (rc) {
		FUNC8(&pdev->dev, "Error %d registering hotplug", rc);
		return rc;
	}

	/* Walk through the tree for all PMU perf devices */
	rc = FUNC22(xgene_pmu, pdev);
	if (rc) {
		FUNC8(&pdev->dev, "No PMU perf devices found!\n");
		goto out_unregister;
	}

	/* Enable interrupt */
	xgene_pmu->ops->unmask_int(xgene_pmu);

	return 0;

out_unregister:
	FUNC7(CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE,
				    &xgene_pmu->node);
	return rc;
}