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
typedef  int u32 ;
typedef  int u16 ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct ecap_pwm_chip {unsigned long long clk_rate; TYPE_1__ chip; scalar_t__ mmio_base; } ;

/* Variables and functions */
 scalar_t__ CAP1 ; 
 scalar_t__ CAP2 ; 
 scalar_t__ CAP3 ; 
 scalar_t__ CAP4 ; 
 scalar_t__ ECCTL2 ; 
 int ECCTL2_APWM_MODE ; 
 int ECCTL2_SYNC_SEL_DISA ; 
 int ERANGE ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pwm_device*) ; 
 int FUNC4 (scalar_t__) ; 
 struct ecap_pwm_chip* FUNC5 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct pwm_chip *chip, struct pwm_device *pwm,
		int duty_ns, int period_ns)
{
	struct ecap_pwm_chip *pc = FUNC5(chip);
	u32 period_cycles, duty_cycles;
	unsigned long long c;
	u16 value;

	if (period_ns > NSEC_PER_SEC)
		return -ERANGE;

	c = pc->clk_rate;
	c = c * period_ns;
	FUNC0(c, NSEC_PER_SEC);
	period_cycles = (u32)c;

	if (period_cycles < 1) {
		period_cycles = 1;
		duty_cycles = 1;
	} else {
		c = pc->clk_rate;
		c = c * duty_ns;
		FUNC0(c, NSEC_PER_SEC);
		duty_cycles = (u32)c;
	}

	FUNC1(pc->chip.dev);

	value = FUNC4(pc->mmio_base + ECCTL2);

	/* Configure APWM mode & disable sync option */
	value |= ECCTL2_APWM_MODE | ECCTL2_SYNC_SEL_DISA;

	FUNC7(value, pc->mmio_base + ECCTL2);

	if (!FUNC3(pwm)) {
		/* Update active registers if not running */
		FUNC6(duty_cycles, pc->mmio_base + CAP2);
		FUNC6(period_cycles, pc->mmio_base + CAP1);
	} else {
		/*
		 * Update shadow registers to configure period and
		 * compare values. This helps current PWM period to
		 * complete on reconfiguring
		 */
		FUNC6(duty_cycles, pc->mmio_base + CAP4);
		FUNC6(period_cycles, pc->mmio_base + CAP3);
	}

	if (!FUNC3(pwm)) {
		value = FUNC4(pc->mmio_base + ECCTL2);
		/* Disable APWM mode to put APWM output Low */
		value &= ~ECCTL2_APWM_MODE;
		FUNC7(value, pc->mmio_base + ECCTL2);
	}

	FUNC2(pc->chip.dev);

	return 0;
}