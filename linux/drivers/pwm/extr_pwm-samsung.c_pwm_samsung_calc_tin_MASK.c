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
typedef  int u8 ;
struct samsung_pwm_variant {int bits; int div_base; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct samsung_pwm_chip {TYPE_1__ chip; struct clk* tclk1; struct clk* tclk0; struct samsung_pwm_variant variant; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 unsigned long FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned long FUNC5 (struct samsung_pwm_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct samsung_pwm_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct samsung_pwm_chip*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC8(struct samsung_pwm_chip *chip,
					  unsigned int chan, unsigned long freq)
{
	struct samsung_pwm_variant *variant = &chip->variant;
	unsigned long rate;
	struct clk *clk;
	u8 div;

	if (!FUNC6(chip, chan)) {
		clk = (chan < 2) ? chip->tclk0 : chip->tclk1;
		if (!FUNC1(clk)) {
			rate = FUNC2(clk);
			if (rate)
				return rate;
		}

		FUNC4(chip->chip.dev,
			"tclk of PWM %d is inoperational, using tdiv\n", chan);
	}

	rate = FUNC5(chip, chan);
	FUNC3(chip->chip.dev, "tin parent at %lu\n", rate);

	/*
	 * Compare minimum PWM frequency that can be achieved with possible
	 * divider settings and choose the lowest divisor that can generate
	 * frequencies lower than requested.
	 */
	if (variant->bits < 32) {
		/* Only for s3c24xx */
		for (div = variant->div_base; div < 4; ++div)
			if ((rate >> (variant->bits + div)) < freq)
				break;
	} else {
		/*
		 * Other variants have enough counter bits to generate any
		 * requested rate, so no need to check higher divisors.
		 */
		div = variant->div_base;
	}

	FUNC7(chip, chan, FUNC0(div));

	return rate >> div;
}