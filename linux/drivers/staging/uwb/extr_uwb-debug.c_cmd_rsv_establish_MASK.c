#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct uwb_dev* dev; int /*<<< orphan*/  type; } ;
struct uwb_rsv {int /*<<< orphan*/  pal_node; int /*<<< orphan*/  max_interval; int /*<<< orphan*/  min_mas; int /*<<< orphan*/  max_mas; int /*<<< orphan*/  type; TYPE_1__ target; } ;
struct uwb_rc {TYPE_2__* dbg; } ;
struct uwb_mac_addr {int dummy; } ;
struct uwb_dev {int dummy; } ;
struct uwb_dbg_cmd_rsv_establish {int /*<<< orphan*/  max_interval; int /*<<< orphan*/  min_mas; int /*<<< orphan*/  max_mas; int /*<<< orphan*/  type; int /*<<< orphan*/  target; } ;
typedef  int /*<<< orphan*/  macaddr ;
struct TYPE_4__ {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  rsvs; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  UWB_RSV_TARGET_DEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct uwb_mac_addr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uwb_dbg_rsv_cb ; 
 struct uwb_dev* FUNC4 (struct uwb_rc*,struct uwb_mac_addr*) ; 
 int /*<<< orphan*/  FUNC5 (struct uwb_dev*) ; 
 struct uwb_rsv* FUNC6 (struct uwb_rc*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct uwb_rsv*) ; 
 int FUNC8 (struct uwb_rsv*) ; 

__attribute__((used)) static int FUNC9(struct uwb_rc *rc,
			     struct uwb_dbg_cmd_rsv_establish *cmd)
{
	struct uwb_mac_addr macaddr;
	struct uwb_rsv *rsv;
	struct uwb_dev *target;
	int ret;

	FUNC1(&macaddr, cmd->target, sizeof(macaddr));
	target = FUNC4(rc, &macaddr);
	if (target == NULL)
		return -ENODEV;

	rsv = FUNC6(rc, uwb_dbg_rsv_cb, rc->dbg);
	if (rsv == NULL) {
		FUNC5(target);
		return -ENOMEM;
	}

	rsv->target.type  = UWB_RSV_TARGET_DEV;
	rsv->target.dev   = target;
	rsv->type         = cmd->type;
	rsv->max_mas      = cmd->max_mas;
	rsv->min_mas      = cmd->min_mas;
	rsv->max_interval = cmd->max_interval;

	ret = FUNC8(rsv);
	if (ret)
		FUNC7(rsv);
	else {
		FUNC2(&(rc->dbg)->list_lock);
		FUNC0(&rsv->pal_node, &rc->dbg->rsvs);
		FUNC3(&(rc->dbg)->list_lock);
	}
	return ret;
}