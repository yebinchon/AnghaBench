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
struct sh_pfc_gpio_data_reg {TYPE_1__* info; } ;
struct sh_pfc_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {unsigned int reg_width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sh_pfc_chip*,unsigned int,struct sh_pfc_gpio_data_reg**,unsigned int*) ; 
 unsigned int FUNC1 (struct sh_pfc_chip*,TYPE_1__*) ; 
 struct sh_pfc_chip* FUNC2 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned offset)
{
	struct sh_pfc_chip *chip = FUNC2(gc);
	struct sh_pfc_gpio_data_reg *reg;
	unsigned int bit;
	unsigned int pos;

	FUNC0(chip, offset, &reg, &bit);

	pos = reg->info->reg_width - (bit + 1);

	return (FUNC1(chip, reg->info) >> pos) & 1;
}