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
typedef  unsigned int u16 ;
struct sh_pfc_pinctrl {struct pinctrl_pin_desc* pins; void* configs; } ;
struct sh_pfc_pin {unsigned int pin; int /*<<< orphan*/  name; } ;
struct sh_pfc {TYPE_1__* info; int /*<<< orphan*/  dev; } ;
struct pinctrl_pin_desc {unsigned int number; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {unsigned int nr_pins; struct sh_pfc_pin* pins; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct sh_pfc *pfc, struct sh_pfc_pinctrl *pmx)
{
	unsigned int i;

	/* Allocate and initialize the pins and configs arrays. */
	pmx->pins = FUNC0(pfc->dev,
				 pfc->info->nr_pins, sizeof(*pmx->pins),
				 GFP_KERNEL);
	if (FUNC1(!pmx->pins))
		return -ENOMEM;

	pmx->configs = FUNC0(pfc->dev,
				    pfc->info->nr_pins, sizeof(*pmx->configs),
				    GFP_KERNEL);
	if (FUNC1(!pmx->configs))
		return -ENOMEM;

	for (i = 0; i < pfc->info->nr_pins; ++i) {
		const struct sh_pfc_pin *info = &pfc->info->pins[i];
		struct pinctrl_pin_desc *pin = &pmx->pins[i];

		/* If the pin number is equal to -1 all pins are considered */
		pin->number = info->pin != (u16)-1 ? info->pin : i;
		pin->name = info->name;
	}

	return 0;
}