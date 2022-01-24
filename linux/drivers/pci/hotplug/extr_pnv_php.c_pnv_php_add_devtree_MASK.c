#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pnv_php_slot {TYPE_1__* dn; int /*<<< orphan*/  ocs; void* dt; void* fdt; int /*<<< orphan*/  pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * child; int /*<<< orphan*/  phandle; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (void*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pnv_php_slot*) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC13(struct pnv_php_slot *php_slot)
{
	void *fdt, *fdt1, *dt;
	int ret;

	/* We don't know the FDT blob size. We try to get it through
	 * maximal memory chunk and then copy it to another chunk that
	 * fits the real size.
	 */
	fdt1 = FUNC3(0x10000, GFP_KERNEL);
	if (!fdt1) {
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC9(php_slot->dn->phandle, fdt1, 0x10000);
	if (ret) {
		FUNC8(php_slot->pdev, "Error %d getting FDT blob\n", ret);
		goto free_fdt1;
	}

	fdt = FUNC2(fdt1, FUNC0(fdt1), GFP_KERNEL);
	if (!fdt) {
		ret = -ENOMEM;
		goto free_fdt1;
	}

	/* Unflatten device tree blob */
	dt = FUNC7(fdt, php_slot->dn, NULL);
	if (!dt) {
		ret = -EINVAL;
		FUNC8(php_slot->pdev, "Cannot unflatten FDT\n");
		goto free_fdt;
	}

	/* Initialize and apply the changeset */
	FUNC6(&php_slot->ocs);
	FUNC12(php_slot->dn);
	ret = FUNC11(&php_slot->ocs, php_slot->dn);
	if (ret) {
		FUNC12(php_slot->dn);
		FUNC8(php_slot->pdev, "Error %d populating changeset\n",
			 ret);
		goto free_dt;
	}

	php_slot->dn->child = NULL;
	ret = FUNC4(&php_slot->ocs);
	if (ret) {
		FUNC8(php_slot->pdev, "Error %d applying changeset\n", ret);
		goto destroy_changeset;
	}

	/* Add device node firmware data */
	FUNC10(php_slot);
	php_slot->fdt = fdt;
	php_slot->dt  = dt;
	FUNC1(fdt1);
	goto out;

destroy_changeset:
	FUNC5(&php_slot->ocs);
free_dt:
	FUNC1(dt);
	php_slot->dn->child = NULL;
free_fdt:
	FUNC1(fdt);
free_fdt1:
	FUNC1(fdt1);
out:
	return ret;
}