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
struct artpec6_pmx {int /*<<< orphan*/  pctl; void* num_pin_groups; void* pin_groups; void* num_functions; void* functions; void* num_pins; void* pins; int /*<<< orphan*/  base; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  artpec6_desc ; 
 void* artpec6_pin_groups ; 
 void* artpec6_pins ; 
 void* artpec6_pmx_functions ; 
 int /*<<< orphan*/  FUNC3 (struct artpec6_pmx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 struct artpec6_pmx* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct artpec6_pmx*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct artpec6_pmx*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct artpec6_pmx *pmx;
	struct resource *res;

	pmx = FUNC7(&pdev->dev, sizeof(*pmx), GFP_KERNEL);
	if (!pmx)
		return -ENOMEM;

	pmx->dev = &pdev->dev;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	pmx->base = FUNC6(&pdev->dev, res);

	if (FUNC1(pmx->base))
		return FUNC2(pmx->base);

	FUNC3(pmx);

	pmx->pins	    = artpec6_pins;
	pmx->num_pins	    = FUNC0(artpec6_pins);
	pmx->functions	    = artpec6_pmx_functions;
	pmx->num_functions  = FUNC0(artpec6_pmx_functions);
	pmx->pin_groups	    = artpec6_pin_groups;
	pmx->num_pin_groups = FUNC0(artpec6_pin_groups);
	pmx->pctl	    = FUNC8(&artpec6_desc, &pdev->dev, pmx);

	if (FUNC1(pmx->pctl)) {
		FUNC4(&pdev->dev, "could not register pinctrl driver\n");
		return FUNC2(pmx->pctl);
	}

	FUNC10(pdev, pmx);

	FUNC5(&pdev->dev, "initialised Axis ARTPEC-6 pinctrl driver\n");

	return 0;
}