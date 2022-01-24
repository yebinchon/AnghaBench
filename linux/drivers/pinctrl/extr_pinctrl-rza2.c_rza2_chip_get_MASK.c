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
struct rza2_pinctrl_priv {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 struct rza2_pinctrl_priv* FUNC4 (struct gpio_chip*) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned int offset)
{
	struct rza2_pinctrl_priv *priv = FUNC4(chip);
	u8 port = FUNC3(offset);
	u8 pin = FUNC2(offset);

	return !!(FUNC5(priv->base + FUNC1(port)) & FUNC0(pin));
}