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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hisi_pmu {unsigned long long index_id; int /*<<< orphan*/  base; int /*<<< orphan*/  ccl_id; int /*<<< orphan*/  sccl_id; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct resource*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev,
				  struct hisi_pmu *l3c_pmu)
{
	unsigned long long id;
	struct resource *res;
	acpi_status status;

	status = FUNC4(FUNC1(&pdev->dev),
				       "_UID", NULL, &id);
	if (FUNC0(status))
		return -EINVAL;

	l3c_pmu->index_id = id;

	/*
	 * Use the SCCL_ID and CCL_ID to identify the L3C PMU, while
	 * SCCL_ID is in MPIDR[aff2] and CCL_ID is in MPIDR[aff1].
	 */
	if (FUNC6(&pdev->dev, "hisilicon,scl-id",
				     &l3c_pmu->sccl_id)) {
		FUNC5(&pdev->dev, "Can not read l3c sccl-id!\n");
		return -EINVAL;
	}

	if (FUNC6(&pdev->dev, "hisilicon,ccl-id",
				     &l3c_pmu->ccl_id)) {
		FUNC5(&pdev->dev, "Can not read l3c ccl-id!\n");
		return -EINVAL;
	}

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	l3c_pmu->base = FUNC7(&pdev->dev, res);
	if (FUNC2(l3c_pmu->base)) {
		FUNC5(&pdev->dev, "ioremap failed for l3c_pmu resource\n");
		return FUNC3(l3c_pmu->base);
	}

	return 0;
}