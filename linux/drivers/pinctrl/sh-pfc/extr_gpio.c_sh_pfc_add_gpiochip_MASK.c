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
struct sh_pfc_window {int dummy; } ;
struct TYPE_2__ {scalar_t__ ngpio; scalar_t__ base; int /*<<< orphan*/  label; } ;
struct sh_pfc_chip {TYPE_1__ gpio_chip; struct sh_pfc* pfc; struct sh_pfc_window* mem; } ;
struct sh_pfc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct sh_pfc_chip* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,struct sh_pfc_chip*) ; 
 struct sh_pfc_chip* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static struct sh_pfc_chip *
FUNC5(struct sh_pfc *pfc, int(*setup)(struct sh_pfc_chip *),
		    struct sh_pfc_window *mem)
{
	struct sh_pfc_chip *chip;
	int ret;

	chip = FUNC3(pfc->dev, sizeof(*chip), GFP_KERNEL);
	if (FUNC4(!chip))
		return FUNC0(-ENOMEM);

	chip->mem = mem;
	chip->pfc = pfc;

	ret = setup(chip);
	if (ret < 0)
		return FUNC0(ret);

	ret = FUNC2(pfc->dev, &chip->gpio_chip, chip);
	if (FUNC4(ret < 0))
		return FUNC0(ret);

	FUNC1(pfc->dev, "%s handling gpio %u -> %u\n",
		 chip->gpio_chip.label, chip->gpio_chip.base,
		 chip->gpio_chip.base + chip->gpio_chip.ngpio - 1);

	return chip;
}