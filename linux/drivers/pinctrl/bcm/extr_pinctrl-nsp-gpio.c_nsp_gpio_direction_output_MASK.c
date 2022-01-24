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
struct nsp_gpio {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NSP_GPIO_DATA_OUT ; 
 int /*<<< orphan*/  NSP_GPIO_OUT_EN ; 
 int /*<<< orphan*/  REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 struct nsp_gpio* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct nsp_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gc, unsigned gpio,
				     int val)
{
	struct nsp_gpio *chip = FUNC1(gc);
	unsigned long flags;

	FUNC3(&chip->lock, flags);
	FUNC2(chip, REG, NSP_GPIO_OUT_EN, gpio, true);
	FUNC2(chip, REG, NSP_GPIO_DATA_OUT, gpio, !!(val));
	FUNC4(&chip->lock, flags);

	FUNC0(chip->dev, "gpio:%u set output, value:%d\n", gpio, val);
	return 0;
}