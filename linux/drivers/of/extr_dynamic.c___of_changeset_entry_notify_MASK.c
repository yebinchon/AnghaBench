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
struct of_reconfig_data {int dn; } ;
struct of_changeset_entry {int action; int np; int /*<<< orphan*/  old_prop; int /*<<< orphan*/  prop; } ;
typedef  int /*<<< orphan*/  rd ;

/* Variables and functions */
 int EINVAL ; 
#define  OF_RECONFIG_ADD_PROPERTY 132 
#define  OF_RECONFIG_ATTACH_NODE 131 
#define  OF_RECONFIG_DETACH_NODE 130 
#define  OF_RECONFIG_REMOVE_PROPERTY 129 
#define  OF_RECONFIG_UPDATE_PROPERTY 128 
 int /*<<< orphan*/  FUNC0 (struct of_changeset_entry*,struct of_changeset_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct of_reconfig_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,struct of_reconfig_data*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(struct of_changeset_entry *ce,
		bool revert)
{
	struct of_reconfig_data rd;
	struct of_changeset_entry ce_inverted;
	int ret = 0;

	if (revert) {
		FUNC0(ce, &ce_inverted);
		ce = &ce_inverted;
	}

	switch (ce->action) {
	case OF_RECONFIG_ATTACH_NODE:
	case OF_RECONFIG_DETACH_NODE:
		FUNC1(&rd, 0, sizeof(rd));
		rd.dn = ce->np;
		ret = FUNC3(ce->action, &rd);
		break;
	case OF_RECONFIG_ADD_PROPERTY:
	case OF_RECONFIG_REMOVE_PROPERTY:
	case OF_RECONFIG_UPDATE_PROPERTY:
		ret = FUNC2(ce->action, ce->np, ce->prop, ce->old_prop);
		break;
	default:
		FUNC4("invalid devicetree changeset action: %i\n",
			(int)ce->action);
		ret = -EINVAL;
	}

	if (ret)
		FUNC4("changeset notifier error @%pOF\n", ce->np);
	return ret;
}