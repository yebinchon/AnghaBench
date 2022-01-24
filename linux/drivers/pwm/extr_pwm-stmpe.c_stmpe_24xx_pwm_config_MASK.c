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
typedef  int u8 ;
typedef  int u16 ;
struct stmpe_pwm {int last_duty; TYPE_1__* stmpe; } ;
struct pwm_device {unsigned int hwpwm; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ partnum; } ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int BRANCH ; 
 unsigned long FUNC2 (unsigned long,int) ; 
 int ENODEV ; 
 int GTS ; 
 int LOAD ; 
 int PRESCALE_512 ; 
 int RAMPDOWN ; 
 int RAMPUP ; 
 int SMAX ; 
 int SMIN ; 
 int STEPTIME_1 ; 
 scalar_t__ STMPE2401 ; 
 scalar_t__ STMPE2403 ; 
 int STMPE24XX_PWMIC0 ; 
 int STMPE24XX_PWMIC1 ; 
 int STMPE24XX_PWMIC2 ; 
 int /*<<< orphan*/  STMPE_BLOCK_PWM ; 
 scalar_t__ STMPE_PWM_24XX_PINBASE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct pwm_chip*,struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct pwm_chip*,struct pwm_device*) ; 
 int FUNC9 (TYPE_1__*,int,int) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct stmpe_pwm* FUNC11 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC12(struct pwm_chip *chip, struct pwm_device *pwm,
				 int duty_ns, int period_ns)
{
	struct stmpe_pwm *stmpe_pwm = FUNC11(chip);
	unsigned int i, pin;
	u16 program[3] = {
		SMAX,
		GTS,
		GTS,
	};
	u8 offset;
	int ret;

	/* Make sure we are disabled */
	if (FUNC6(pwm)) {
		FUNC7(chip, pwm);
	} else {
		/* Connect the PWM to the pin */
		pin = pwm->hwpwm;

		/* On STMPE2401 and 2403 pins 21,22,23 are used */
		if (stmpe_pwm->stmpe->partnum == STMPE2401 ||
		    stmpe_pwm->stmpe->partnum == STMPE2403)
			pin += STMPE_PWM_24XX_PINBASE;

		ret = FUNC10(stmpe_pwm->stmpe, FUNC1(pin),
					STMPE_BLOCK_PWM);
		if (ret) {
			FUNC4(chip->dev, "unable to connect PWM#%u to pin\n",
				pwm->hwpwm);
			return ret;
		}
	}

	/* STMPE24XX */
	switch (pwm->hwpwm) {
	case 0:
		offset = STMPE24XX_PWMIC0;
		break;

	case 1:
		offset = STMPE24XX_PWMIC1;
		break;

	case 2:
		offset = STMPE24XX_PWMIC2;
		break;

	default:
		/* Should not happen as npwm is 3 */
		return -ENODEV;
	}

	FUNC3(chip->dev, "PWM#%u: config duty %d ns, period %d ns\n",
		pwm->hwpwm, duty_ns, period_ns);

	if (duty_ns == 0) {
		if (stmpe_pwm->stmpe->partnum == STMPE2401)
			program[0] = SMAX; /* off all the time */

		if (stmpe_pwm->stmpe->partnum == STMPE2403)
			program[0] = LOAD | 0xff; /* LOAD 0xff */

		stmpe_pwm->last_duty = 0x00;
	} else if (duty_ns == period_ns) {
		if (stmpe_pwm->stmpe->partnum == STMPE2401)
			program[0] = SMIN; /* on all the time */

		if (stmpe_pwm->stmpe->partnum == STMPE2403)
			program[0] = LOAD | 0x00; /* LOAD 0x00 */

		stmpe_pwm->last_duty = 0xff;
	} else {
		u8 value, last = stmpe_pwm->last_duty;
		unsigned long duty;

		/*
		 * Counter goes from 0x00 to 0xff repeatedly at 32768 Hz,
		 * (means a period of 30517 ns) then this is compared to the
		 * counter from the ramp, if this is >= PWM counter the output
		 * is high. With LOAD we can define how much of the cycle it
		 * is on.
		 *
		 * Prescale = 0 -> 2 kHz -> T = 1/f = 488281.25 ns
		 */

		/* Scale to 0..0xff */
		duty = duty_ns * 256;
		duty = FUNC2(duty, period_ns);
		value = duty;

		if (value == last) {
			/* Run the old program */
			if (FUNC6(pwm))
				FUNC8(chip, pwm);

			return 0;
		} else if (stmpe_pwm->stmpe->partnum == STMPE2403) {
			/* STMPE2403 can simply set the right PWM value */
			program[0] = LOAD | value;
			program[1] = 0x0000;
		} else if (stmpe_pwm->stmpe->partnum == STMPE2401) {
			/* STMPE2401 need a complex program */
			u16 incdec = 0x0000;

			if (last < value)
				/* Count up */
				incdec = RAMPUP | (value - last);
			else
				/* Count down */
				incdec = RAMPDOWN | (last - value);

			/* Step to desired value, smoothly */
			program[0] = PRESCALE_512 | STEPTIME_1 | incdec;

			/* Loop eternally to 0x00 */
			program[1] = BRANCH;
		}

		FUNC3(chip->dev,
			"PWM#%u: value = %02x, last_duty = %02x, program=%04x,%04x,%04x\n",
			pwm->hwpwm, value, last, program[0], program[1],
			program[2]);
		stmpe_pwm->last_duty = value;
	}

	/*
	 * We can write programs of up to 64 16-bit words into this channel.
	 */
	for (i = 0; i < FUNC0(program); i++) {
		u8 value;

		value = (program[i] >> 8) & 0xff;

		ret = FUNC9(stmpe_pwm->stmpe, offset, value);
		if (ret) {
			FUNC4(chip->dev, "error writing register %02x: %d\n",
				offset, ret);
			return ret;
		}

		value = program[i] & 0xff;

		ret = FUNC9(stmpe_pwm->stmpe, offset, value);
		if (ret) {
			FUNC4(chip->dev, "error writing register %02x: %d\n",
				offset, ret);
			return ret;
		}
	}

	/* If we were enabled, re-enable this PWM */
	if (FUNC6(pwm))
		FUNC8(chip, pwm);

	/* Sleep for 200ms so we're sure it will take effect */
	FUNC5(200);

	FUNC3(chip->dev, "programmed PWM#%u, %u bytes\n", pwm->hwpwm, i);

	return 0;
}