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
struct st_pio_control {int rt_pin_mask; void* od; void* pu; void* oe; void* alt; } ;
struct st_pinctrl {struct regmap* regmap; struct device* dev; TYPE_1__* banks; struct st_pctl_data* data; } ;
struct st_pctl_data {int /*<<< orphan*/  od; int /*<<< orphan*/  pu; int /*<<< orphan*/  oe; int /*<<< orphan*/  alt; } ;
struct regmap {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct st_pio_control pc; } ;

/* Variables and functions */
 int ST_GPIO_PINS_PER_BANK ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*,char*,int*) ; 
 void* FUNC1 (struct device*,struct regmap*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct st_pinctrl*,int,struct st_pio_control*) ; 

__attribute__((used)) static void FUNC3(struct st_pinctrl *info, int bank,
			     struct device_node *np)
{
	const struct st_pctl_data *data = info->data;
	/**
	 * For a given shared register like OE/PU/OD, there are 8 bits per bank
	 * 0:7 belongs to bank0, 8:15 belongs to bank1 ...
	 * So each register is shared across 4 banks.
	 */
	int lsb = (bank%4) * ST_GPIO_PINS_PER_BANK;
	int msb = lsb + ST_GPIO_PINS_PER_BANK - 1;
	struct st_pio_control *pc = &info->banks[bank].pc;
	struct device *dev = info->dev;
	struct regmap *regmap  = info->regmap;

	pc->alt = FUNC1(dev, regmap, bank, data->alt, 0, 31);
	pc->oe = FUNC1(dev, regmap, bank/4, data->oe, lsb, msb);
	pc->pu = FUNC1(dev, regmap, bank/4, data->pu, lsb, msb);
	pc->od = FUNC1(dev, regmap, bank/4, data->od, lsb, msb);

	/* retime avaiable for all pins by default */
	pc->rt_pin_mask = 0xff;
	FUNC0(np, "st,retime-pin-mask", &pc->rt_pin_mask);
	FUNC2(info, bank, pc);

	return;
}