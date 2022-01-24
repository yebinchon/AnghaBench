#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pnv_php_slot {int /*<<< orphan*/ * fdt; TYPE_1__* dn; int /*<<< orphan*/ * dt; int /*<<< orphan*/  ocs; } ;
struct TYPE_3__ {int /*<<< orphan*/ * child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct pnv_php_slot *php_slot)
{
	FUNC3(php_slot->dn);

	/*
	 * Decrease the refcount if the device nodes were created
	 * through OF changeset before detaching them.
	 */
	if (php_slot->fdt)
		FUNC1(&php_slot->ocs);
	FUNC2(php_slot->dn);

	if (php_slot->fdt) {
		FUNC0(php_slot->dt);
		FUNC0(php_slot->fdt);
		php_slot->dt        = NULL;
		php_slot->dn->child = NULL;
		php_slot->fdt       = NULL;
	}
}