#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_3__ {int /*<<< orphan*/  function; int /*<<< orphan*/  group; } ;
struct TYPE_4__ {TYPE_1__ mux; } ;
struct pinctrl_map {TYPE_2__ data; int /*<<< orphan*/  type; } ;
struct device_node {int dummy; } ;
struct bcm2835_pinctrl {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  PIN_MAP_TYPE_MUX_GROUP ; 
 int /*<<< orphan*/ * bcm2835_functions ; 
 int /*<<< orphan*/ * bcm2835_gpio_groups ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct device_node*,size_t) ; 

__attribute__((used)) static int FUNC2(struct bcm2835_pinctrl *pc,
		struct device_node *np, u32 pin, u32 fnum,
		struct pinctrl_map **maps)
{
	struct pinctrl_map *map = *maps;

	if (fnum >= FUNC0(bcm2835_functions)) {
		FUNC1(pc->dev, "%pOF: invalid brcm,function %d\n", np, fnum);
		return -EINVAL;
	}

	map->type = PIN_MAP_TYPE_MUX_GROUP;
	map->data.mux.group = bcm2835_gpio_groups[pin];
	map->data.mux.function = bcm2835_functions[fnum];
	(*maps)++;

	return 0;
}