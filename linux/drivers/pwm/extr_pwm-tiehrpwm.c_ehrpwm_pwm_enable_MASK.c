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
typedef  int /*<<< orphan*/  u16 ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct ehrpwm_pwm_chip {TYPE_1__ chip; int /*<<< orphan*/  tbclk; int /*<<< orphan*/  mmio_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  AQCSFRC ; 
 int /*<<< orphan*/  AQCSFRC_CSFA_FRCDIS ; 
 int /*<<< orphan*/  AQCSFRC_CSFA_MASK ; 
 int /*<<< orphan*/  AQCSFRC_CSFB_FRCDIS ; 
 int /*<<< orphan*/  AQCSFRC_CSFB_MASK ; 
 int /*<<< orphan*/  AQSFRC ; 
 int /*<<< orphan*/  AQSFRC_RLDCSF_MASK ; 
 int /*<<< orphan*/  AQSFRC_RLDCSF_ZRO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ehrpwm_pwm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ehrpwm_pwm_chip* FUNC6 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC7(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct ehrpwm_pwm_chip *pc = FUNC6(chip);
	u16 aqcsfrc_val, aqcsfrc_mask;
	int ret;

	/* Leave clock enabled on enabling PWM */
	FUNC5(chip->dev);

	/* Disabling Action Qualifier on PWM output */
	if (pwm->hwpwm) {
		aqcsfrc_val = AQCSFRC_CSFB_FRCDIS;
		aqcsfrc_mask = AQCSFRC_CSFB_MASK;
	} else {
		aqcsfrc_val = AQCSFRC_CSFA_FRCDIS;
		aqcsfrc_mask = AQCSFRC_CSFA_MASK;
	}

	/* Changes to shadow mode */
	FUNC4(pc->mmio_base, AQSFRC, AQSFRC_RLDCSF_MASK,
		      AQSFRC_RLDCSF_ZRO);

	FUNC4(pc->mmio_base, AQCSFRC, aqcsfrc_mask, aqcsfrc_val);

	/* Channels polarity can be configured from action qualifier module */
	FUNC1(pc, pwm->hwpwm);

	/* Enable TBCLK */
	ret = FUNC0(pc->tbclk);
	if (ret) {
		FUNC2(chip->dev, "Failed to enable TBCLK for %s: %d\n",
			FUNC3(pc->chip.dev), ret);
		return ret;
	}

	return 0;
}