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
struct pinctrl_pin_desc {int /*<<< orphan*/  number; } ;
struct pinctrl_dev {int /*<<< orphan*/  pin_desc_tree; } ;
struct pin_desc {struct pin_desc* name; scalar_t__ dynamic_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pin_desc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pin_desc* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pinctrl_dev *pctldev,
				  const struct pinctrl_pin_desc *pins,
				  unsigned num_pins)
{
	int i;

	for (i = 0; i < num_pins; i++) {
		struct pin_desc *pindesc;

		pindesc = FUNC2(&pctldev->pin_desc_tree,
					    pins[i].number);
		if (pindesc) {
			FUNC1(&pctldev->pin_desc_tree,
					  pins[i].number);
			if (pindesc->dynamic_name)
				FUNC0(pindesc->name);
		}
		FUNC0(pindesc);
	}
}