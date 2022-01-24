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
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESET_SOURCE_ENABLE_REG ; 
 int /*<<< orphan*/  SW_MASTER_RESET_REG ; 
 int /*<<< orphan*/  brcmstb_restart_nb ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  of_match ; 
 struct of_device_id* FUNC2 (int /*<<< orphan*/ ,struct device_node*) ; 
 int FUNC3 (struct device_node*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  regmap ; 
 int /*<<< orphan*/  reset_masks ; 
 int /*<<< orphan*/  rst_src_en ; 
 int /*<<< orphan*/  sw_mstr_rst ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	int rc;
	struct device_node *np = pdev->dev.of_node;
	const struct of_device_id *of_id;

	of_id = FUNC2(of_match, np);
	if (!of_id) {
		FUNC4("failed to look up compatible string\n");
		return -EINVAL;
	}
	reset_masks = of_id->data;

	regmap = FUNC6(np, "syscon");
	if (FUNC0(regmap)) {
		FUNC4("failed to get syscon phandle\n");
		return -EINVAL;
	}

	rc = FUNC3(np, "syscon", RESET_SOURCE_ENABLE_REG,
					&rst_src_en);
	if (rc) {
		FUNC4("can't get rst_src_en offset (%d)\n", rc);
		return -EINVAL;
	}

	rc = FUNC3(np, "syscon", SW_MASTER_RESET_REG,
					&sw_mstr_rst);
	if (rc) {
		FUNC4("can't get sw_mstr_rst offset (%d)\n", rc);
		return -EINVAL;
	}

	rc = FUNC5(&brcmstb_restart_nb);
	if (rc)
		FUNC1(&pdev->dev,
			"cannot register restart handler (err=%d)\n", rc);

	return rc;
}