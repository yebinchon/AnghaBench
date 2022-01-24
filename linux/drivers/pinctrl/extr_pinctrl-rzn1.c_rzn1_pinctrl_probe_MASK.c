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
typedef  void* u32 ;
struct rzn1_pinctrl {int* mdio_func; void* clk; int /*<<< orphan*/  pctl; int /*<<< orphan*/ * dev; void* lev2; void* lev2_protect_phys; void* lev1; void* lev1_protect_phys; } ;
struct resource {scalar_t__ start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ *,struct resource*) ; 
 struct rzn1_pinctrl* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,struct rzn1_pinctrl*,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct rzn1_pinctrl*) ; 
 TYPE_1__ rzn1_pinctrl_desc ; 
 int FUNC15 (struct platform_device*,struct rzn1_pinctrl*) ; 
 int /*<<< orphan*/  rzn1_pins ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct rzn1_pinctrl *ipctl;
	struct resource *res;
	int ret;

	/* Create state holders etc for this driver */
	ipctl = FUNC10(&pdev->dev, sizeof(*ipctl), GFP_KERNEL);
	if (!ipctl)
		return -ENOMEM;

	ipctl->mdio_func[0] = -1;
	ipctl->mdio_func[1] = -1;

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	ipctl->lev1_protect_phys = (u32)res->start + 0x400;
	ipctl->lev1 = FUNC9(&pdev->dev, res);
	if (FUNC1(ipctl->lev1))
		return FUNC2(ipctl->lev1);

	res = FUNC13(pdev, IORESOURCE_MEM, 1);
	ipctl->lev2_protect_phys = (u32)res->start + 0x400;
	ipctl->lev2 = FUNC9(&pdev->dev, res);
	if (FUNC1(ipctl->lev2))
		return FUNC2(ipctl->lev2);

	ipctl->clk = FUNC8(&pdev->dev, NULL);
	if (FUNC1(ipctl->clk))
		return FUNC2(ipctl->clk);
	ret = FUNC4(ipctl->clk);
	if (ret)
		return ret;

	ipctl->dev = &pdev->dev;
	rzn1_pinctrl_desc.name = FUNC7(&pdev->dev);
	rzn1_pinctrl_desc.pins = rzn1_pins;
	rzn1_pinctrl_desc.npins = FUNC0(rzn1_pins);

	ret = FUNC15(pdev, ipctl);
	if (ret) {
		FUNC5(&pdev->dev, "fail to probe dt properties\n");
		goto err_clk;
	}

	FUNC14(pdev, ipctl);

	ret = FUNC11(&pdev->dev, &rzn1_pinctrl_desc,
					     ipctl, &ipctl->pctl);
	if (ret) {
		FUNC5(&pdev->dev, "could not register rzn1 pinctrl driver\n");
		goto err_clk;
	}

	ret = FUNC12(ipctl->pctl);
	if (ret)
		goto err_clk;

	FUNC6(&pdev->dev, "probed\n");

	return 0;

err_clk:
	FUNC3(ipctl->clk);

	return ret;
}