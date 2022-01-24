#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct property {int /*<<< orphan*/  name; struct property* next; } ;
struct of_changeset_entry {int action; int /*<<< orphan*/  old_prop; struct property* prop; TYPE_1__* np; } ;
struct TYPE_12__ {struct property* deadprops; } ;

/* Variables and functions */
 int EINVAL ; 
#define  OF_RECONFIG_ADD_PROPERTY 132 
#define  OF_RECONFIG_ATTACH_NODE 131 
#define  OF_RECONFIG_DETACH_NODE 130 
#define  OF_RECONFIG_REMOVE_PROPERTY 129 
#define  OF_RECONFIG_UPDATE_PROPERTY 128 
 int FUNC0 (TYPE_1__*,struct property*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct property*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct of_changeset_entry*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,struct property*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct property*) ; 
 int FUNC9 (TYPE_1__*,struct property*,struct property**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct property*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devtree_lock ; 
 int /*<<< orphan*/  FUNC11 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC14(struct of_changeset_entry *ce)
{
	struct property *old_prop, **propp;
	unsigned long flags;
	int ret = 0;

	FUNC4(ce);

	FUNC12(&devtree_lock, flags);
	switch (ce->action) {
	case OF_RECONFIG_ATTACH_NODE:
		FUNC2(ce->np);
		break;
	case OF_RECONFIG_DETACH_NODE:
		FUNC5(ce->np);
		break;
	case OF_RECONFIG_ADD_PROPERTY:
		/* If the property is in deadprops then it must be removed */
		for (propp = &ce->np->deadprops; *propp; propp = &(*propp)->next) {
			if (*propp == ce->prop) {
				*propp = ce->prop->next;
				ce->prop->next = NULL;
				break;
			}
		}

		ret = FUNC0(ce->np, ce->prop);
		if (ret) {
			FUNC11("changeset: add_property failed @%pOF/%s\n",
				ce->np,
				ce->prop->name);
			break;
		}
		break;
	case OF_RECONFIG_REMOVE_PROPERTY:
		ret = FUNC7(ce->np, ce->prop);
		if (ret) {
			FUNC11("changeset: remove_property failed @%pOF/%s\n",
				ce->np,
				ce->prop->name);
			break;
		}
		break;

	case OF_RECONFIG_UPDATE_PROPERTY:
		/* If the property is in deadprops then it must be removed */
		for (propp = &ce->np->deadprops; *propp; propp = &(*propp)->next) {
			if (*propp == ce->prop) {
				*propp = ce->prop->next;
				ce->prop->next = NULL;
				break;
			}
		}

		ret = FUNC9(ce->np, ce->prop, &old_prop);
		if (ret) {
			FUNC11("changeset: update_property failed @%pOF/%s\n",
				ce->np,
				ce->prop->name);
			break;
		}
		break;
	default:
		ret = -EINVAL;
	}
	FUNC13(&devtree_lock, flags);

	if (ret)
		return ret;

	switch (ce->action) {
	case OF_RECONFIG_ATTACH_NODE:
		FUNC3(ce->np);
		break;
	case OF_RECONFIG_DETACH_NODE:
		FUNC6(ce->np);
		break;
	case OF_RECONFIG_ADD_PROPERTY:
		/* ignore duplicate names */
		FUNC1(ce->np, ce->prop);
		break;
	case OF_RECONFIG_REMOVE_PROPERTY:
		FUNC8(ce->np, ce->prop);
		break;
	case OF_RECONFIG_UPDATE_PROPERTY:
		FUNC10(ce->np, ce->prop, ce->old_prop);
		break;
	}

	return 0;
}