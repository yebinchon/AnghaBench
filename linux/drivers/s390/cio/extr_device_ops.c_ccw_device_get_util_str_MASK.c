#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int /*<<< orphan*/ * chpid; } ;
struct TYPE_6__ {TYPE_1__ pmcw; } ;
struct subchannel {TYPE_2__ schib; } ;
struct chp_id {int /*<<< orphan*/  id; } ;
struct TYPE_7__ {int /*<<< orphan*/  util_str; } ;
struct channel_path {int /*<<< orphan*/  lock; TYPE_3__ desc_fmt3; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_4__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct chp_id*) ; 
 struct channel_path* FUNC1 (struct chp_id) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct subchannel* FUNC6 (int /*<<< orphan*/ ) ; 

u8 *FUNC7(struct ccw_device *cdev, int chp_idx)
{
	struct subchannel *sch = FUNC6(cdev->dev.parent);
	struct channel_path *chp;
	struct chp_id chpid;
	u8 *util_str;

	FUNC0(&chpid);
	chpid.id = sch->schib.pmcw.chpid[chp_idx];
	chp = FUNC1(chpid);

	util_str = FUNC2(sizeof(chp->desc_fmt3.util_str), GFP_KERNEL);
	if (!util_str)
		return NULL;

	FUNC4(&chp->lock);
	FUNC3(util_str, chp->desc_fmt3.util_str, sizeof(chp->desc_fmt3.util_str));
	FUNC5(&chp->lock);

	return util_str;
}