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
struct samsung_pin_bank {int /*<<< orphan*/  slock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct samsung_pin_bank* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (struct gpio_chip*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_chip*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gc, unsigned offset,
							int value)
{
	struct samsung_pin_bank *bank = FUNC0(gc);
	unsigned long flags;
	int ret;

	FUNC3(&bank->slock, flags);
	FUNC2(gc, offset, value);
	ret = FUNC1(gc, offset, false);
	FUNC4(&bank->slock, flags);

	return ret;
}