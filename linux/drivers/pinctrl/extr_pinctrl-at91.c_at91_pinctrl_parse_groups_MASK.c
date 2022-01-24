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
typedef  int /*<<< orphan*/  u32 ;
struct device_node {int /*<<< orphan*/  name; } ;
struct at91_pmx_pin {int bank; void* conf; void* mux; void* pin; } ;
struct at91_pinctrl {int /*<<< orphan*/  dev; } ;
struct at91_pin_group {int npins; void** pins; struct at91_pmx_pin* pins_conf; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_NB_GPIO_PER_BANK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct at91_pmx_pin*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct device_node*,char*,int*) ; 

__attribute__((used)) static int FUNC6(struct device_node *np,
				     struct at91_pin_group *grp,
				     struct at91_pinctrl *info, u32 index)
{
	struct at91_pmx_pin *pin;
	int size;
	const __be32 *list;
	int i, j;

	FUNC2(info->dev, "group(%d): %pOFn\n", index, np);

	/* Initialise group */
	grp->name = np->name;

	/*
	 * the binding format is atmel,pins = <bank pin mux CONFIG ...>,
	 * do sanity check and calculate pins number
	 */
	list = FUNC5(np, "atmel,pins", &size);
	/* we do not check return since it's safe node passed down */
	size /= sizeof(*list);
	if (!size || size % 4) {
		FUNC3(info->dev, "wrong pins number or pins and configs should be by 4\n");
		return -EINVAL;
	}

	grp->npins = size / 4;
	pin = grp->pins_conf = FUNC4(info->dev,
					    grp->npins,
					    sizeof(struct at91_pmx_pin),
					    GFP_KERNEL);
	grp->pins = FUNC4(info->dev, grp->npins, sizeof(unsigned int),
				 GFP_KERNEL);
	if (!grp->pins_conf || !grp->pins)
		return -ENOMEM;

	for (i = 0, j = 0; i < size; i += 4, j++) {
		pin->bank = FUNC1(*list++);
		pin->pin = FUNC1(*list++);
		grp->pins[j] = pin->bank * MAX_NB_GPIO_PER_BANK + pin->pin;
		pin->mux = FUNC1(*list++);
		pin->conf = FUNC1(*list++);

		FUNC0(info->dev, pin);
		pin++;
	}

	return 0;
}