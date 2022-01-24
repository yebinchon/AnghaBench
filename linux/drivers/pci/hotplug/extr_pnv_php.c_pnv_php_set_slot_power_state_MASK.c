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
typedef  scalar_t__ uint8_t ;
struct pnv_php_slot {int /*<<< orphan*/  pdev; TYPE_1__* dn; int /*<<< orphan*/  id; } ;
struct opal_msg {int /*<<< orphan*/ * params; } ;
struct hotplug_slot {int dummy; } ;
struct TYPE_2__ {scalar_t__ phandle; } ;

/* Variables and functions */
 int ENOMSG ; 
 scalar_t__ OPAL_PCI_SLOT_OFFLINE ; 
 scalar_t__ OPAL_PCI_SLOT_POWER_OFF ; 
 scalar_t__ OPAL_PCI_SLOT_POWER_ON ; 
 scalar_t__ OPAL_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,struct opal_msg*) ; 
 int FUNC3 (struct pnv_php_slot*) ; 
 int /*<<< orphan*/  FUNC4 (struct pnv_php_slot*) ; 
 struct pnv_php_slot* FUNC5 (struct hotplug_slot*) ; 

int FUNC6(struct hotplug_slot *slot,
				 uint8_t state)
{
	struct pnv_php_slot *php_slot = FUNC5(slot);
	struct opal_msg msg;
	int ret;

	ret = FUNC2(php_slot->id, state, &msg);
	if (ret > 0) {
		if (FUNC0(msg.params[1]) != php_slot->dn->phandle	||
		    FUNC0(msg.params[2]) != state			||
		    FUNC0(msg.params[3]) != OPAL_SUCCESS) {
			FUNC1(php_slot->pdev, "Wrong msg (%lld, %lld, %lld)\n",
				 FUNC0(msg.params[1]),
				 FUNC0(msg.params[2]),
				 FUNC0(msg.params[3]));
			return -ENOMSG;
		}
	} else if (ret < 0) {
		FUNC1(php_slot->pdev, "Error %d powering %s\n",
			 ret, (state == OPAL_PCI_SLOT_POWER_ON) ? "on" : "off");
		return ret;
	}

	if (state == OPAL_PCI_SLOT_POWER_OFF || state == OPAL_PCI_SLOT_OFFLINE)
		FUNC4(php_slot);
	else
		ret = FUNC3(php_slot);

	return ret;
}