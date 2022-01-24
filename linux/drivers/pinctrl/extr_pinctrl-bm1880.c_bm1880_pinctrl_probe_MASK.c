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
struct bm1880_pinctrl {int /*<<< orphan*/  pctrldev; int /*<<< orphan*/  pinconf; void* nfuncs; void* funcs; void* ngroups; void* groups; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bm1880_desc ; 
 void* bm1880_pctrl_groups ; 
 int /*<<< orphan*/  bm1880_pinconf ; 
 void* bm1880_pmux_functions ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct bm1880_pinctrl* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct bm1880_pinctrl*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct bm1880_pinctrl*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)

{
	struct resource *res;
	struct bm1880_pinctrl *pctrl;

	pctrl = FUNC5(&pdev->dev, sizeof(*pctrl), GFP_KERNEL);
	if (!pctrl)
		return -ENOMEM;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	pctrl->base = FUNC4(&pdev->dev, res);
	if (FUNC1(pctrl->base))
		return FUNC2(pctrl->base);

	pctrl->groups = bm1880_pctrl_groups;
	pctrl->ngroups = FUNC0(bm1880_pctrl_groups);
	pctrl->funcs = bm1880_pmux_functions;
	pctrl->nfuncs = FUNC0(bm1880_pmux_functions);
	pctrl->pinconf = bm1880_pinconf;

	pctrl->pctrldev = FUNC6(&pdev->dev, &bm1880_desc,
						pctrl);
	if (FUNC1(pctrl->pctrldev))
		return FUNC2(pctrl->pctrldev);

	FUNC8(pdev, pctrl);

	FUNC3(&pdev->dev, "BM1880 pinctrl driver initialized\n");

	return 0;
}