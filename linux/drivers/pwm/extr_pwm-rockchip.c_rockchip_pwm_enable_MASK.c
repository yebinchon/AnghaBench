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
typedef  int /*<<< orphan*/  u32 ;
struct rockchip_pwm_chip {int /*<<< orphan*/  clk; TYPE_2__* data; scalar_t__ base; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct TYPE_3__ {scalar_t__ ctrl; } ;
struct TYPE_4__ {TYPE_1__ regs; int /*<<< orphan*/  enable_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct rockchip_pwm_chip* FUNC3 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct pwm_chip *chip,
			       struct pwm_device *pwm,
			       bool enable)
{
	struct rockchip_pwm_chip *pc = FUNC3(chip);
	u32 enable_conf = pc->data->enable_conf;
	int ret;
	u32 val;

	if (enable) {
		ret = FUNC1(pc->clk);
		if (ret)
			return ret;
	}

	val = FUNC2(pc->base + pc->data->regs.ctrl);

	if (enable)
		val |= enable_conf;
	else
		val &= ~enable_conf;

	FUNC4(val, pc->base + pc->data->regs.ctrl);

	if (!enable)
		FUNC0(pc->clk);

	return 0;
}