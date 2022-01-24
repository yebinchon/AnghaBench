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
struct x86_cpu_id {scalar_t__ driver_data; } ;
struct TYPE_4__ {int ssram_size; void* regmap; int /*<<< orphan*/  ssram_base_addr; } ;
struct TYPE_3__ {int ssram_size; void* regmap; int /*<<< orphan*/  ssram_base_addr; } ;
struct telemetry_plt_config {TYPE_2__ ioss_config; TYPE_1__ pss_config; int /*<<< orphan*/  telem_trace_lock; int /*<<< orphan*/  telem_lock; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  telemetry_cpu_ids ; 
 int FUNC8 (int /*<<< orphan*/ *,struct telemetry_plt_config*) ; 
 int FUNC9 (struct platform_device*) ; 
 struct telemetry_plt_config* telm_conf ; 
 int /*<<< orphan*/  telm_pltops ; 
 struct x86_cpu_id* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct resource *res0 = NULL, *res1 = NULL;
	const struct x86_cpu_id *id;
	int size, ret = -ENOMEM;

	id = FUNC10(telemetry_cpu_ids);
	if (!id)
		return -ENODEV;

	telm_conf = (struct telemetry_plt_config *)id->driver_data;

	res0 = FUNC5(pdev, IORESOURCE_MEM, 0);
	if (!res0) {
		ret = -EINVAL;
		goto out;
	}
	size = FUNC7(res0);
	if (!FUNC1(&pdev->dev, res0->start, size,
				     pdev->name)) {
		ret = -EBUSY;
		goto out;
	}
	telm_conf->pss_config.ssram_base_addr = res0->start;
	telm_conf->pss_config.ssram_size = size;

	res1 = FUNC5(pdev, IORESOURCE_MEM, 1);
	if (!res1) {
		ret = -EINVAL;
		goto out;
	}
	size = FUNC7(res1);
	if (!FUNC1(&pdev->dev, res1->start, size,
				     pdev->name)) {
		ret = -EBUSY;
		goto out;
	}

	telm_conf->ioss_config.ssram_base_addr = res1->start;
	telm_conf->ioss_config.ssram_size = size;

	telm_conf->pss_config.regmap = FUNC2(
					telm_conf->pss_config.ssram_base_addr,
					telm_conf->pss_config.ssram_size);
	if (!telm_conf->pss_config.regmap) {
		ret = -ENOMEM;
		goto out;
	}

	telm_conf->ioss_config.regmap = FUNC2(
				telm_conf->ioss_config.ssram_base_addr,
				telm_conf->ioss_config.ssram_size);
	if (!telm_conf->ioss_config.regmap) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC4(&telm_conf->telem_lock);
	FUNC4(&telm_conf->telem_trace_lock);

	ret = FUNC9(pdev);
	if (ret)
		goto out;

	ret = FUNC8(&telm_pltops, telm_conf);
	if (ret) {
		FUNC0(&pdev->dev, "TELEMETRY Set Pltops Failed.\n");
		goto out;
	}

	return 0;

out:
	if (res0)
		FUNC6(res0->start, FUNC7(res0));
	if (res1)
		FUNC6(res1->start, FUNC7(res1));
	if (telm_conf->pss_config.regmap)
		FUNC3(telm_conf->pss_config.regmap);
	if (telm_conf->ioss_config.regmap)
		FUNC3(telm_conf->ioss_config.regmap);
	FUNC0(&pdev->dev, "TELEMETRY Setup Failed.\n");

	return ret;
}