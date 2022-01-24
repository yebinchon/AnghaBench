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
typedef  int u32 ;
struct armada_37xx_pinctrl {int /*<<< orphan*/  irq_lock; scalar_t__ base; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int GPIO_PER_REG ; 
 scalar_t__ INPUT_VAL ; 
 scalar_t__ IRQ_POL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct armada_37xx_pinctrl *info,
					     u32 pin_idx)
{
	u32 reg_idx = pin_idx / GPIO_PER_REG;
	u32 bit_num = pin_idx % GPIO_PER_REG;
	u32 p, l, ret;
	unsigned long flags;

	FUNC1(info->regmap, INPUT_VAL + 4*reg_idx, &l);

	FUNC2(&info->irq_lock, flags);
	p = FUNC0(info->base + IRQ_POL + 4 * reg_idx);
	if ((p ^ l) & (1 << bit_num)) {
		/*
		 * For the gpios which are used for both-edge irqs, when their
		 * interrupts happen, their input levels are changed,
		 * yet their interrupt polarities are kept in old values, we
		 * should synchronize their interrupt polarities; for example,
		 * at first a gpio's input level is low and its interrupt
		 * polarity control is "Detect rising edge", then the gpio has
		 * a interrupt , its level turns to high, we should change its
		 * polarity control to "Detect falling edge" correspondingly.
		 */
		p ^= 1 << bit_num;
		FUNC4(p, info->base + IRQ_POL + 4 * reg_idx);
		ret = 0;
	} else {
		/* Spurious irq */
		ret = -1;
	}

	FUNC3(&info->irq_lock, flags);
	return ret;
}