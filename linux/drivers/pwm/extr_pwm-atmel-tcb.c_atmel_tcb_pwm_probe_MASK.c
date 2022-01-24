#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int of_pwm_n_cells; int base; int /*<<< orphan*/  npwm; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; TYPE_2__* dev; } ;
struct atmel_tcb_pwm_chip {struct atmel_tc* tc; TYPE_1__ chip; int /*<<< orphan*/  lock; } ;
struct atmel_tc {int /*<<< orphan*/  slow_clk; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NPWM ; 
 struct atmel_tc* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_tc*) ; 
 int /*<<< orphan*/  atmel_tcb_pwm_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 struct atmel_tcb_pwm_chip* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  of_pwm_xlate_with_flags ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct atmel_tcb_pwm_chip*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct atmel_tcb_pwm_chip *tcbpwm;
	struct device_node *np = pdev->dev.of_node;
	struct atmel_tc *tc;
	int err;
	int tcblock;

	err = FUNC6(np, "tc-block", &tcblock);
	if (err < 0) {
		FUNC4(&pdev->dev,
			"failed to get Timer Counter Block number from device tree (error: %d)\n",
			err);
		return err;
	}

	tc = FUNC0(tcblock);
	if (tc == NULL) {
		FUNC4(&pdev->dev, "failed to allocate Timer Counter Block\n");
		return -ENOMEM;
	}

	tcbpwm = FUNC5(&pdev->dev, sizeof(*tcbpwm), GFP_KERNEL);
	if (tcbpwm == NULL) {
		err = -ENOMEM;
		goto err_free_tc;
	}

	tcbpwm->chip.dev = &pdev->dev;
	tcbpwm->chip.ops = &atmel_tcb_pwm_ops;
	tcbpwm->chip.of_xlate = of_pwm_xlate_with_flags;
	tcbpwm->chip.of_pwm_n_cells = 3;
	tcbpwm->chip.base = -1;
	tcbpwm->chip.npwm = NPWM;
	tcbpwm->tc = tc;

	err = FUNC3(tc->slow_clk);
	if (err)
		goto err_free_tc;

	FUNC9(&tcbpwm->lock);

	err = FUNC8(&tcbpwm->chip);
	if (err < 0)
		goto err_disable_clk;

	FUNC7(pdev, tcbpwm);

	return 0;

err_disable_clk:
	FUNC2(tcbpwm->tc->slow_clk);

err_free_tc:
	FUNC1(tc);

	return err;
}