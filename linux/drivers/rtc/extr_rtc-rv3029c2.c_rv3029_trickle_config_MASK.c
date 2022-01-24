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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct rv3029_trickle_tab_elem {scalar_t__ r; scalar_t__ conf; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int FUNC0 (struct rv3029_trickle_tab_elem*) ; 
 int /*<<< orphan*/  RV3029_CONTROL_E2P_EECTRL ; 
 int /*<<< orphan*/  RV3029_TRICKLE_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,scalar_t__) ; 
 int FUNC3 (struct device_node*,char*,scalar_t__*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct rv3029_trickle_tab_elem* rv3029_trickle_tab ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct device_node *of_node = dev->of_node;
	const struct rv3029_trickle_tab_elem *elem;
	int i, err;
	u32 ohms;
	u8 trickle_set_bits;

	if (!of_node)
		return;

	/* Configure the trickle charger. */
	err = FUNC3(of_node, "trickle-resistor-ohms", &ohms);
	if (err) {
		/* Disable trickle charger. */
		trickle_set_bits = 0;
	} else {
		/* Enable trickle charger. */
		for (i = 0; i < FUNC0(rv3029_trickle_tab); i++) {
			elem = &rv3029_trickle_tab[i];
			if (elem->r >= ohms)
				break;
		}
		trickle_set_bits = elem->conf;
		FUNC2(dev,
			 "Trickle charger enabled at %d ohms resistance.\n",
			 elem->r);
	}
	err = FUNC4(dev, RV3029_CONTROL_E2P_EECTRL,
					RV3029_TRICKLE_MASK,
					trickle_set_bits);
	if (err < 0)
		FUNC1(dev, "Failed to update trickle charger config\n");
}