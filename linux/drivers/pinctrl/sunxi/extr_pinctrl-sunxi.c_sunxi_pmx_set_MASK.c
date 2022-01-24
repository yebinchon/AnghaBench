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
typedef  int u32 ;
struct sunxi_pinctrl {int /*<<< orphan*/  lock; scalar_t__ membase; TYPE_1__* desc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ pin_base; } ;

/* Variables and functions */
 int MUX_PINS_MASK ; 
 struct sunxi_pinctrl* FUNC0 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct pinctrl_dev *pctldev,
				 unsigned pin,
				 u8 config)
{
	struct sunxi_pinctrl *pctl = FUNC0(pctldev);
	unsigned long flags;
	u32 val, mask;

	FUNC1(&pctl->lock, flags);

	pin -= pctl->desc->pin_base;
	val = FUNC3(pctl->membase + FUNC5(pin));
	mask = MUX_PINS_MASK << FUNC4(pin);
	FUNC6((val & ~mask) | config << FUNC4(pin),
		pctl->membase + FUNC5(pin));

	FUNC2(&pctl->lock, flags);
}