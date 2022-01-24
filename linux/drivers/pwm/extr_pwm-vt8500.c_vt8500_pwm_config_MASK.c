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
typedef  unsigned long u32 ;
struct vt8500_chip {int /*<<< orphan*/  clk; scalar_t__ base; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long CTRL_AUTOLOAD ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_CTRL_UPDATE ; 
 int /*<<< orphan*/  STATUS_DUTY_UPDATE ; 
 int /*<<< orphan*/  STATUS_PERIOD_UPDATE ; 
 int /*<<< orphan*/  STATUS_SCALAR_UPDATE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vt8500_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC10 (scalar_t__) ; 
 struct vt8500_chip* FUNC11 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct pwm_chip *chip, struct pwm_device *pwm,
		int duty_ns, int period_ns)
{
	struct vt8500_chip *vt8500 = FUNC11(chip);
	unsigned long long c;
	unsigned long period_cycles, prescale, pv, dc;
	int err;
	u32 val;

	err = FUNC5(vt8500->clk);
	if (err < 0) {
		FUNC7(chip->dev, "failed to enable clock\n");
		return err;
	}

	c = FUNC6(vt8500->clk);
	c = c * period_ns;
	FUNC8(c, 1000000000);
	period_cycles = c;

	if (period_cycles < 1)
		period_cycles = 1;
	prescale = (period_cycles - 1) / 4096;
	pv = period_cycles / (prescale + 1) - 1;
	if (pv > 4095)
		pv = 4095;

	if (prescale > 1023) {
		FUNC4(vt8500->clk);
		return -EINVAL;
	}

	c = (unsigned long long)pv * duty_ns;
	FUNC8(c, period_ns);
	dc = c;

	FUNC12(prescale, vt8500->base + FUNC3(pwm->hwpwm));
	FUNC9(vt8500, pwm->hwpwm, STATUS_SCALAR_UPDATE);

	FUNC12(pv, vt8500->base + FUNC2(pwm->hwpwm));
	FUNC9(vt8500, pwm->hwpwm, STATUS_PERIOD_UPDATE);

	FUNC12(dc, vt8500->base + FUNC1(pwm->hwpwm));
	FUNC9(vt8500, pwm->hwpwm, STATUS_DUTY_UPDATE);

	val = FUNC10(vt8500->base + FUNC0(pwm->hwpwm));
	val |= CTRL_AUTOLOAD;
	FUNC12(val, vt8500->base + FUNC0(pwm->hwpwm));
	FUNC9(vt8500, pwm->hwpwm, STATUS_CTRL_UPDATE);

	FUNC4(vt8500->clk);
	return 0;
}