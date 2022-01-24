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
struct pnv_php_slot {int /*<<< orphan*/  state; int /*<<< orphan*/  link; int /*<<< orphan*/  children; struct pnv_php_slot* parent; int /*<<< orphan*/  pdev; int /*<<< orphan*/  name; int /*<<< orphan*/  slot_no; int /*<<< orphan*/  bus; int /*<<< orphan*/  slot; struct device_node* dn; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  PNV_PHP_STATE_REGISTERED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 struct pnv_php_slot* FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  pnv_php_lock ; 
 int /*<<< orphan*/  FUNC7 (struct pnv_php_slot*) ; 
 int /*<<< orphan*/  pnv_php_slot_list ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct pnv_php_slot *php_slot)
{
	struct pnv_php_slot *parent;
	struct device_node *dn = php_slot->dn;
	unsigned long flags;
	int ret;

	/* Check if the slot is registered or not */
	parent = FUNC6(php_slot->dn);
	if (parent) {
		FUNC7(parent);
		return -EEXIST;
	}

	/* Register PCI slot */
	ret = FUNC4(&php_slot->slot, php_slot->bus,
			      php_slot->slot_no, php_slot->name);
	if (ret) {
		FUNC5(php_slot->pdev, "Error %d registering slot\n", ret);
		return ret;
	}

	/* Attach to the parent's child list or global list */
	while ((dn = FUNC2(dn))) {
		if (!FUNC0(dn)) {
			FUNC3(dn);
			break;
		}

		parent = FUNC6(dn);
		if (parent) {
			FUNC3(dn);
			break;
		}

		FUNC3(dn);
	}

	FUNC8(&pnv_php_lock, flags);
	php_slot->parent = parent;
	if (parent)
		FUNC1(&php_slot->link, &parent->children);
	else
		FUNC1(&php_slot->link, &pnv_php_slot_list);
	FUNC9(&pnv_php_lock, flags);

	php_slot->state = PNV_PHP_STATE_REGISTERED;
	return 0;
}