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
struct resource {int dummy; } ;
struct TYPE_3__ {int base; unsigned int npwm; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct pwm_mediatek_chip {TYPE_1__ chip; TYPE_2__* soc; void** clk_pwms; void* clk_main; void* clk_top; void* regs; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_4__ {unsigned int num_pwms; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 void** FUNC5 (int /*<<< orphan*/ *,unsigned int,int,int /*<<< orphan*/ ) ; 
 struct pwm_mediatek_chip* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct pwm_mediatek_chip*) ; 
 int /*<<< orphan*/  pwm_mediatek_ops ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct pwm_mediatek_chip *pc;
	struct resource *res;
	unsigned int i;
	int ret;

	pc = FUNC6(&pdev->dev, sizeof(*pc), GFP_KERNEL);
	if (!pc)
		return -ENOMEM;

	pc->soc = FUNC7(&pdev->dev);

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	pc->regs = FUNC4(&pdev->dev, res);
	if (FUNC0(pc->regs))
		return FUNC1(pc->regs);

	pc->clk_pwms = FUNC5(&pdev->dev, pc->soc->num_pwms,
				    sizeof(*pc->clk_pwms), GFP_KERNEL);
	if (!pc->clk_pwms)
		return -ENOMEM;

	pc->clk_top = FUNC3(&pdev->dev, "top");
	if (FUNC0(pc->clk_top)) {
		FUNC2(&pdev->dev, "clock: top fail: %ld\n",
			FUNC1(pc->clk_top));
		return FUNC1(pc->clk_top);
	}

	pc->clk_main = FUNC3(&pdev->dev, "main");
	if (FUNC0(pc->clk_main)) {
		FUNC2(&pdev->dev, "clock: main fail: %ld\n",
			FUNC1(pc->clk_main));
		return FUNC1(pc->clk_main);
	}

	for (i = 0; i < pc->soc->num_pwms; i++) {
		char name[8];

		FUNC11(name, sizeof(name), "pwm%d", i + 1);

		pc->clk_pwms[i] = FUNC3(&pdev->dev, name);
		if (FUNC0(pc->clk_pwms[i])) {
			FUNC2(&pdev->dev, "clock: %s fail: %ld\n",
				name, FUNC1(pc->clk_pwms[i]));
			return FUNC1(pc->clk_pwms[i]);
		}
	}

	FUNC9(pdev, pc);

	pc->chip.dev = &pdev->dev;
	pc->chip.ops = &pwm_mediatek_ops;
	pc->chip.base = -1;
	pc->chip.npwm = pc->soc->num_pwms;

	ret = FUNC10(&pc->chip);
	if (ret < 0) {
		FUNC2(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
		return ret;
	}

	return 0;
}