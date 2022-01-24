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
typedef  int u8 ;
typedef  int u16 ;
struct rza2_pinctrl_priv {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int RZA2_PDR_INPUT ; 
 int RZA2_PDR_MASK ; 
 int RZA2_PDR_OUTPUT ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 struct rza2_pinctrl_priv* FUNC3 (struct gpio_chip*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned int,int) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned int offset)
{
	struct rza2_pinctrl_priv *priv = FUNC3(chip);
	u8 port = FUNC2(offset);
	u8 pin = FUNC1(offset);
	u16 reg16;

	reg16 = FUNC4(priv->base + FUNC0(port));
	reg16 = (reg16 >> (pin * 2)) & RZA2_PDR_MASK;

	if (reg16 == RZA2_PDR_OUTPUT)
		return 0;

	if (reg16 == RZA2_PDR_INPUT)
		return 1;

	/*
	 * This GPIO controller has a default Hi-Z state that is not input or
	 * output, so force the pin to input now.
	 */
	FUNC5(priv->base, offset, 1);

	return 1;
}