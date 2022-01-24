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
typedef  int /*<<< orphan*/  u32 ;
struct sunxi_pinctrl {TYPE_1__* desc; scalar_t__ membase; int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int irq_banks; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 struct clk* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int) ; 
 unsigned int FUNC8 (struct clk*,unsigned long,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct sunxi_pinctrl *pctl,
					struct device_node *node)
{
	unsigned int hosc_diff, losc_diff;
	unsigned int hosc_div, losc_div;
	struct clk *hosc, *losc;
	u8 div, src;
	int i, ret;

	/* Deal with old DTs that didn't have the oscillators */
	if (FUNC4(node) != 3)
		return 0;

	/* If we don't have any setup, bail out */
	if (!FUNC5(node, "input-debounce", NULL))
		return 0;

	losc = FUNC3(pctl->dev, "losc");
	if (FUNC1(losc))
		return FUNC2(losc);

	hosc = FUNC3(pctl->dev, "hosc");
	if (FUNC1(hosc))
		return FUNC2(hosc);

	for (i = 0; i < pctl->desc->irq_banks; i++) {
		unsigned long debounce_freq;
		u32 debounce;

		ret = FUNC6(node, "input-debounce",
						 i, &debounce);
		if (ret)
			return ret;

		if (!debounce)
			continue;

		debounce_freq = FUNC0(USEC_PER_SEC, debounce);
		losc_div = FUNC8(losc,
							  debounce_freq,
							  &losc_diff);

		hosc_div = FUNC8(hosc,
							  debounce_freq,
							  &hosc_diff);

		if (hosc_diff < losc_diff) {
			div = hosc_div;
			src = 1;
		} else {
			div = losc_div;
			src = 0;
		}

		FUNC9(src | div << 4,
		       pctl->membase +
		       FUNC7(pctl->desc, i));
	}

	return 0;
}