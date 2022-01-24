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
typedef  int u64 ;
typedef  int u32 ;
struct rockchip_pwm_chip {int /*<<< orphan*/  pclk; TYPE_2__* data; scalar_t__ base; int /*<<< orphan*/  clk; } ;
struct pwm_state {int enabled; int /*<<< orphan*/  polarity; void* duty_cycle; void* period; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct TYPE_3__ {scalar_t__ ctrl; scalar_t__ duty; scalar_t__ period; } ;
struct TYPE_4__ {int enable_conf; int prescaler; scalar_t__ supports_polarity; TYPE_1__ regs; } ;

/* Variables and functions */
 void* FUNC0 (int,unsigned long) ; 
 int NSEC_PER_SEC ; 
 int PWM_DUTY_POSITIVE ; 
 int /*<<< orphan*/  PWM_POLARITY_INVERSED ; 
 int /*<<< orphan*/  PWM_POLARITY_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (scalar_t__) ; 
 struct rockchip_pwm_chip* FUNC5 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC6(struct pwm_chip *chip,
				   struct pwm_device *pwm,
				   struct pwm_state *state)
{
	struct rockchip_pwm_chip *pc = FUNC5(chip);
	u32 enable_conf = pc->data->enable_conf;
	unsigned long clk_rate;
	u64 tmp;
	u32 val;
	int ret;

	ret = FUNC2(pc->pclk);
	if (ret)
		return;

	clk_rate = FUNC3(pc->clk);

	tmp = FUNC4(pc->base + pc->data->regs.period);
	tmp *= pc->data->prescaler * NSEC_PER_SEC;
	state->period = FUNC0(tmp, clk_rate);

	tmp = FUNC4(pc->base + pc->data->regs.duty);
	tmp *= pc->data->prescaler * NSEC_PER_SEC;
	state->duty_cycle =  FUNC0(tmp, clk_rate);

	val = FUNC4(pc->base + pc->data->regs.ctrl);
	if (pc->data->supports_polarity)
		state->enabled = ((val & enable_conf) != enable_conf) ?
				 false : true;
	else
		state->enabled = ((val & enable_conf) == enable_conf) ?
				 true : false;

	if (pc->data->supports_polarity && !(val & PWM_DUTY_POSITIVE))
		state->polarity = PWM_POLARITY_INVERSED;
	else
		state->polarity = PWM_POLARITY_NORMAL;

	FUNC1(pc->pclk);
}