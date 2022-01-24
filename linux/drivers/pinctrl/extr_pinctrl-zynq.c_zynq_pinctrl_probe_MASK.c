#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct zynq_pinctrl {int /*<<< orphan*/  pctrl; void* nfuncs; void* funcs; void* ngroups; void* groups; int /*<<< orphan*/  pctrl_offset; int /*<<< orphan*/  syscon; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct zynq_pinctrl* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,struct zynq_pinctrl*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct zynq_pinctrl*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  zynq_desc ; 
 void* zynq_pctrl_groups ; 
 void* zynq_pmux_functions ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)

{
	struct resource *res;
	struct zynq_pinctrl *pctrl;

	pctrl = FUNC5(&pdev->dev, sizeof(*pctrl), GFP_KERNEL);
	if (!pctrl)
		return -ENOMEM;

	pctrl->syscon = FUNC9(pdev->dev.of_node,
							"syscon");
	if (FUNC1(pctrl->syscon)) {
		FUNC3(&pdev->dev, "unable to get syscon\n");
		return FUNC2(pctrl->syscon);
	}

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC3(&pdev->dev, "missing IO resource\n");
		return -ENODEV;
	}
	pctrl->pctrl_offset = res->start;

	pctrl->groups = zynq_pctrl_groups;
	pctrl->ngroups = FUNC0(zynq_pctrl_groups);
	pctrl->funcs = zynq_pmux_functions;
	pctrl->nfuncs = FUNC0(zynq_pmux_functions);

	pctrl->pctrl = FUNC6(&pdev->dev, &zynq_desc, pctrl);
	if (FUNC1(pctrl->pctrl))
		return FUNC2(pctrl->pctrl);

	FUNC8(pdev, pctrl);

	FUNC4(&pdev->dev, "zynq pinctrl initialized\n");

	return 0;
}