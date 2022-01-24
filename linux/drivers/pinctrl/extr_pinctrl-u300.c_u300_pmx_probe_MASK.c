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
struct u300_pmx {int /*<<< orphan*/  pctl; int /*<<< orphan*/  virtbase; int /*<<< orphan*/ * dev; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct u300_pmx* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct u300_pmx*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct u300_pmx*) ; 
 int /*<<< orphan*/  u300_pmx_desc ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct u300_pmx *upmx;
	struct resource *res;

	/* Create state holders etc for this driver */
	upmx = FUNC5(&pdev->dev, sizeof(*upmx), GFP_KERNEL);
	if (!upmx)
		return -ENOMEM;

	upmx->dev = &pdev->dev;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	upmx->virtbase = FUNC4(&pdev->dev, res);
	if (FUNC0(upmx->virtbase))
		return FUNC1(upmx->virtbase);

	upmx->pctl = FUNC6(&pdev->dev, &u300_pmx_desc, upmx);
	if (FUNC0(upmx->pctl)) {
		FUNC2(&pdev->dev, "could not register U300 pinmux driver\n");
		return FUNC1(upmx->pctl);
	}

	FUNC8(pdev, upmx);

	FUNC3(&pdev->dev, "initialized U300 pin control driver\n");

	return 0;
}