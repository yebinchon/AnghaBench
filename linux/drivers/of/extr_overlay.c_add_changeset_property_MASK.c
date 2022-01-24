#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct target {TYPE_1__* np; scalar_t__ in_livetree; } ;
struct property {struct property* value; struct property* name; struct property* next; } ;
struct overlay_changeset {int /*<<< orphan*/  cset; } ;
struct TYPE_6__ {struct property* deadprops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OF_OVERLAY ; 
 struct property* FUNC0 (struct property*,int /*<<< orphan*/ ) ; 
 struct property* FUNC1 (struct overlay_changeset*,struct property*) ; 
 int /*<<< orphan*/  FUNC2 (struct property*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,struct property*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,struct property*) ; 
 struct property* FUNC5 (TYPE_1__*,struct property*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct property*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct property*,struct property*) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_1__*,...) ; 

__attribute__((used)) static int FUNC10(struct overlay_changeset *ovcs,
		struct target *target, struct property *overlay_prop,
		bool is_symbols_prop)
{
	struct property *new_prop = NULL, *prop;
	int ret = 0;
	bool check_for_non_overlay_node = false;

	if (target->in_livetree)
		if (!FUNC7(overlay_prop->name, "name") ||
		    !FUNC7(overlay_prop->name, "phandle") ||
		    !FUNC7(overlay_prop->name, "linux,phandle"))
			return 0;

	if (target->in_livetree)
		prop = FUNC5(target->np, overlay_prop->name, NULL);
	else
		prop = NULL;

	if (is_symbols_prop) {
		if (prop)
			return -EINVAL;
		new_prop = FUNC1(ovcs, overlay_prop);
	} else {
		new_prop = FUNC0(overlay_prop, GFP_KERNEL);
	}

	if (!new_prop)
		return -ENOMEM;

	if (!prop) {
		check_for_non_overlay_node = true;
		if (!target->in_livetree) {
			new_prop->next = target->np->deadprops;
			target->np->deadprops = new_prop;
		}
		ret = FUNC3(&ovcs->cset, target->np,
						new_prop);
	} else if (!FUNC7(prop->name, "#address-cells")) {
		if (!FUNC8(prop, new_prop)) {
			FUNC9("ERROR: changing value of #address-cells is not allowed in %pOF\n",
			       target->np);
			ret = -EINVAL;
		}
	} else if (!FUNC7(prop->name, "#size-cells")) {
		if (!FUNC8(prop, new_prop)) {
			FUNC9("ERROR: changing value of #size-cells is not allowed in %pOF\n",
			       target->np);
			ret = -EINVAL;
		}
	} else {
		check_for_non_overlay_node = true;
		ret = FUNC4(&ovcs->cset, target->np,
						   new_prop);
	}

	if (check_for_non_overlay_node &&
	    !FUNC6(target->np, OF_OVERLAY))
		FUNC9("WARNING: memory leak will occur if overlay removed, property: %pOF/%s\n",
		       target->np, new_prop->name);

	if (ret) {
		FUNC2(new_prop->name);
		FUNC2(new_prop->value);
		FUNC2(new_prop);
	}
	return ret;
}