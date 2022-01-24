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
typedef  int u32 ;
struct sunxi_pinctrl {int /*<<< orphan*/  lock; scalar_t__ membase; TYPE_1__* desc; } ;
struct regulator {int dummy; } ;
struct TYPE_2__ {int io_bias_cfg_variant; unsigned int pin_base; } ;

/* Variables and functions */
#define  BIAS_VOLTAGE_GRP_CONFIG 129 
#define  BIAS_VOLTAGE_PIO_POW_MODE_SEL 128 
 int EINVAL ; 
 int IO_BIAS_MASK ; 
 unsigned int PINS_PER_BANK ; 
 scalar_t__ PIO_POW_MOD_SEL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (struct regulator*) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct sunxi_pinctrl *pctl,
					 unsigned pin,
					 struct regulator *supply)
{
	unsigned short bank = pin / PINS_PER_BANK;
	unsigned long flags;
	u32 val, reg;
	int uV;

	if (!pctl->desc->io_bias_cfg_variant)
		return 0;

	uV = FUNC3(supply);
	if (uV < 0)
		return uV;

	/* Might be dummy regulator with no voltage set */
	if (uV == 0)
		return 0;

	switch (pctl->desc->io_bias_cfg_variant) {
	case BIAS_VOLTAGE_GRP_CONFIG:
		/*
		 * Configured value must be equal or greater to actual
		 * voltage.
		 */
		if (uV <= 1800000)
			val = 0x0; /* 1.8V */
		else if (uV <= 2500000)
			val = 0x6; /* 2.5V */
		else if (uV <= 2800000)
			val = 0x9; /* 2.8V */
		else if (uV <= 3000000)
			val = 0xA; /* 3.0V */
		else
			val = 0xD; /* 3.3V */

		pin -= pctl->desc->pin_base;

		reg = FUNC2(pctl->membase + FUNC4(pin));
		reg &= ~IO_BIAS_MASK;
		FUNC5(reg | val, pctl->membase + FUNC4(pin));
		return 0;
	case BIAS_VOLTAGE_PIO_POW_MODE_SEL:
		val = uV <= 1800000 ? 1 : 0;

		FUNC0(&pctl->lock, flags);
		reg = FUNC2(pctl->membase + PIO_POW_MOD_SEL_REG);
		reg &= ~(1 << bank);
		FUNC5(reg | val << bank, pctl->membase + PIO_POW_MOD_SEL_REG);
		FUNC1(&pctl->lock, flags);
		return 0;
	default:
		return -EINVAL;
	}
}