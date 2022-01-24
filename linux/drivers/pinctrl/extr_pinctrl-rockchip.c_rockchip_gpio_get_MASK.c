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
typedef  unsigned int u32 ;
struct rockchip_pin_bank {int /*<<< orphan*/  clk; scalar_t__ reg_base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ GPIO_EXT_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct rockchip_pin_bank* FUNC2 (struct gpio_chip*) ; 
 unsigned int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *gc, unsigned offset)
{
	struct rockchip_pin_bank *bank = FUNC2(gc);
	u32 data;

	FUNC1(bank->clk);
	data = FUNC3(bank->reg_base + GPIO_EXT_PORT);
	FUNC0(bank->clk);
	data >>= offset;
	data &= 1;
	return data;
}