#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  of_node; TYPE_1__* driver; } ;
struct platform_device {TYPE_2__ dev; } ;
struct owl_sps_info {int num_domains; } ;
struct TYPE_8__ {int num_domains; int /*<<< orphan*/  domains; } ;
struct owl_sps {TYPE_3__ genpd_data; int /*<<< orphan*/  domains; struct owl_sps_info const* info; TYPE_2__* dev; int /*<<< orphan*/  base; } ;
struct of_device_id {struct owl_sps_info* data; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_match_table; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 struct owl_sps* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  domains ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct of_device_id* FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC7 (struct owl_sps*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct owl_sps*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	const struct of_device_id *match;
	const struct owl_sps_info *sps_info;
	struct owl_sps *sps;
	int i, ret;

	if (!pdev->dev.of_node) {
		FUNC2(&pdev->dev, "no device node\n");
		return -ENODEV;
	}

	match = FUNC6(pdev->dev.driver->of_match_table, &pdev->dev);
	if (!match || !match->data) {
		FUNC2(&pdev->dev, "unknown compatible or missing data\n");
		return -EINVAL;
	}

	sps_info = match->data;

	sps = FUNC3(&pdev->dev,
			   FUNC8(sps, domains, sps_info->num_domains),
			   GFP_KERNEL);
	if (!sps)
		return -ENOMEM;

	sps->base = FUNC5(pdev->dev.of_node, 0, "owl-sps");
	if (FUNC0(sps->base)) {
		FUNC2(&pdev->dev, "failed to map sps registers\n");
		return FUNC1(sps->base);
	}

	sps->dev = &pdev->dev;
	sps->info = sps_info;
	sps->genpd_data.domains = sps->domains;
	sps->genpd_data.num_domains = sps_info->num_domains;

	for (i = 0; i < sps_info->num_domains; i++) {
		ret = FUNC7(sps, i);
		if (ret)
			return ret;
	}

	ret = FUNC4(pdev->dev.of_node, &sps->genpd_data);
	if (ret) {
		FUNC2(&pdev->dev, "failed to add provider (%d)", ret);
		return ret;
	}

	return 0;
}