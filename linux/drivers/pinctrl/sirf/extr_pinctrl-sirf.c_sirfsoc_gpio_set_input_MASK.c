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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {unsigned int regs; } ;
struct sirfsoc_gpio_chip {TYPE_1__ chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIRFSOC_GPIO_CTL_OUT_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline void FUNC2(struct sirfsoc_gpio_chip *sgpio,
					  unsigned ctrl_offset)
{
	u32 val;

	val = FUNC0(sgpio->chip.regs + ctrl_offset);
	val &= ~SIRFSOC_GPIO_CTL_OUT_EN_MASK;
	FUNC1(val, sgpio->chip.regs + ctrl_offset);
}