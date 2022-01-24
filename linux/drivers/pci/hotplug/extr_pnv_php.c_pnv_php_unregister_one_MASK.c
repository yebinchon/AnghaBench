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
struct pnv_php_slot {int /*<<< orphan*/  slot; int /*<<< orphan*/  state; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PNV_PHP_STATE_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pnv_php_slot* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct pnv_php_slot*) ; 
 int /*<<< orphan*/  FUNC3 (struct pnv_php_slot*) ; 

__attribute__((used)) static void FUNC4(struct device_node *dn)
{
	struct pnv_php_slot *php_slot;

	php_slot = FUNC1(dn);
	if (!php_slot)
		return;

	php_slot->state = PNV_PHP_STATE_OFFLINE;
	FUNC0(&php_slot->slot);
	FUNC3(php_slot);
	FUNC2(php_slot);
}