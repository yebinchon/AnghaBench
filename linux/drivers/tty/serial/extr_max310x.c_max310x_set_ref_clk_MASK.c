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
struct max310x_port {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned int) ; 
 unsigned int MAX310X_CLKSRC_CRYST_BIT ; 
 unsigned int MAX310X_CLKSRC_EXTCLK_BIT ; 
 unsigned int MAX310X_CLKSRC_PLLBYP_BIT ; 
 unsigned int MAX310X_CLKSRC_PLL_BIT ; 
 int /*<<< orphan*/  MAX310X_CLKSRC_REG ; 
 int /*<<< orphan*/  MAX310X_PLLCFG_REG ; 
 unsigned int MAX310X_STS_CLKREADY_BIT ; 
 int /*<<< orphan*/  MAX310X_STS_IRQSTS_REG ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,long*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct max310x_port *s,
			       unsigned long freq, bool xtal)
{
	unsigned int div, clksrc, pllcfg = 0;
	long besterr = -1;
	unsigned long fdiv, fmul, bestfreq = freq;

	/* First, update error without PLL */
	FUNC2(freq, &besterr);

	/* Try all possible PLL dividers */
	for (div = 1; (div <= 63) && besterr; div++) {
		fdiv = FUNC0(freq, div);

		/* Try multiplier 6 */
		fmul = fdiv * 6;
		if ((fdiv >= 500000) && (fdiv <= 800000))
			if (!FUNC2(fmul, &besterr)) {
				pllcfg = (0 << 6) | div;
				bestfreq = fmul;
			}
		/* Try multiplier 48 */
		fmul = fdiv * 48;
		if ((fdiv >= 850000) && (fdiv <= 1200000))
			if (!FUNC2(fmul, &besterr)) {
				pllcfg = (1 << 6) | div;
				bestfreq = fmul;
			}
		/* Try multiplier 96 */
		fmul = fdiv * 96;
		if ((fdiv >= 425000) && (fdiv <= 1000000))
			if (!FUNC2(fmul, &besterr)) {
				pllcfg = (2 << 6) | div;
				bestfreq = fmul;
			}
		/* Try multiplier 144 */
		fmul = fdiv * 144;
		if ((fdiv >= 390000) && (fdiv <= 667000))
			if (!FUNC2(fmul, &besterr)) {
				pllcfg = (3 << 6) | div;
				bestfreq = fmul;
			}
	}

	/* Configure clock source */
	clksrc = MAX310X_CLKSRC_EXTCLK_BIT | (xtal ? MAX310X_CLKSRC_CRYST_BIT : 0);

	/* Configure PLL */
	if (pllcfg) {
		clksrc |= MAX310X_CLKSRC_PLL_BIT;
		FUNC5(s->regmap, MAX310X_PLLCFG_REG, pllcfg);
	} else
		clksrc |= MAX310X_CLKSRC_PLLBYP_BIT;

	FUNC5(s->regmap, MAX310X_CLKSRC_REG, clksrc);

	/* Wait for crystal */
	if (xtal) {
		unsigned int val;
		FUNC3(10);
		FUNC4(s->regmap, MAX310X_STS_IRQSTS_REG, &val);
		if (!(val & MAX310X_STS_CLKREADY_BIT)) {
			FUNC1(dev, "clock is not stable yet\n");
		}
	}

	return (int)bestfreq;
}