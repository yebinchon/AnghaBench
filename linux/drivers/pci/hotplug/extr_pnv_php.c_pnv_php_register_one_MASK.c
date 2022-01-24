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
typedef  scalar_t__ u32 ;
struct pnv_php_slot {int /*<<< orphan*/  dn; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENXIO ; 
 int FUNC0 (struct device_node*,char*,scalar_t__*) ; 
 struct pnv_php_slot* FUNC1 (struct device_node*) ; 
 int FUNC2 (struct pnv_php_slot*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pnv_php_slot*) ; 
 int /*<<< orphan*/  FUNC4 (struct pnv_php_slot*) ; 
 int FUNC5 (struct pnv_php_slot*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device_node *dn)
{
	struct pnv_php_slot *php_slot;
	u32 prop32;
	int ret;

	/* Check if it's hotpluggable slot */
	ret = FUNC0(dn, "ibm,slot-pluggable", &prop32);
	if (ret || !prop32)
		return -ENXIO;

	ret = FUNC0(dn, "ibm,reset-by-firmware", &prop32);
	if (ret || !prop32)
		return -ENXIO;

	php_slot = FUNC1(dn);
	if (!php_slot)
		return -ENODEV;

	ret = FUNC5(php_slot);
	if (ret)
		goto free_slot;

	ret = FUNC2(php_slot, false);
	if (ret)
		goto unregister_slot;

	/* Enable interrupt if the slot supports surprise hotplug */
	ret = FUNC0(dn, "ibm,slot-surprise-pluggable", &prop32);
	if (!ret && prop32)
		FUNC3(php_slot);

	return 0;

unregister_slot:
	FUNC6(php_slot->dn);
free_slot:
	FUNC4(php_slot);
	return ret;
}