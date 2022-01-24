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
typedef  int /*<<< orphan*/  u8 ;
struct ingenic_pinctrl {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int PINS_PER_GPIO_CHIP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ X1000_GPIO_PZ_BASE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct ingenic_pinctrl *jzpc,
		unsigned int pin, u8 reg, bool set)
{
	unsigned int idx = pin % PINS_PER_GPIO_CHIP;

	FUNC3(jzpc->map, X1000_GPIO_PZ_BASE +
			(set ? FUNC2(reg) : FUNC1(reg)), FUNC0(idx));
}