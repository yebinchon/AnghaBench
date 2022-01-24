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
struct msm_pingroup {int /*<<< orphan*/  in_bit; int /*<<< orphan*/  intr_polarity_bit; } ;
struct msm_pinctrl {int /*<<< orphan*/  dev; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (struct msm_pinctrl*,struct msm_pingroup const*) ; 
 unsigned int FUNC3 (struct msm_pinctrl*,struct msm_pingroup const*) ; 
 unsigned int FUNC4 (struct msm_pinctrl*,struct msm_pingroup const*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,struct msm_pinctrl*,struct msm_pingroup const*) ; 

__attribute__((used)) static void FUNC6(struct msm_pinctrl *pctrl,
					  const struct msm_pingroup *g,
					  struct irq_data *d)
{
	int loop_limit = 100;
	unsigned val, val2, intstat;
	unsigned pol;

	do {
		val = FUNC4(pctrl, g) & FUNC0(g->in_bit);

		pol = FUNC2(pctrl, g);
		pol ^= FUNC0(g->intr_polarity_bit);
		FUNC5(val, pctrl, g);

		val2 = FUNC4(pctrl, g) & FUNC0(g->in_bit);
		intstat = FUNC3(pctrl, g);
		if (intstat || (val == val2))
			return;
	} while (loop_limit-- > 0);
	FUNC1(pctrl->dev, "dual-edge irq failed to stabilize, %#08x != %#08x\n",
		val, val2);
}