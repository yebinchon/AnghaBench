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
typedef  scalar_t__ u8 ;
struct ingenic_gpio_chip {TYPE_1__* jzpc; } ;
struct TYPE_2__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ X1000_GPIO_PZ_BASE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ingenic_gpio_chip *jzgc,
		u8 reg, u8 offset, bool set)
{
	if (set)
		reg = FUNC2(reg);
	else
		reg = FUNC1(reg);

	FUNC3(jzgc->jzpc->map, X1000_GPIO_PZ_BASE + reg, FUNC0(offset));
}