#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct typec_altmode {char* desc; int /*<<< orphan*/ * ops; TYPE_1__ dev; int /*<<< orphan*/  vdo; } ;
struct dp_altmode {int /*<<< orphan*/  work; int /*<<< orphan*/  state; struct typec_altmode* alt; struct typec_altmode const* port; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DP_STATE_ENTER ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dp_altmode* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dp_altmode_group ; 
 int /*<<< orphan*/  dp_altmode_ops ; 
 int /*<<< orphan*/  dp_altmode_work ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct typec_altmode* FUNC7 (struct typec_altmode*) ; 
 int /*<<< orphan*/  FUNC8 (struct typec_altmode*,struct dp_altmode*) ; 

int FUNC9(struct typec_altmode *alt)
{
	const struct typec_altmode *port = FUNC7(alt);
	struct dp_altmode *dp;
	int ret;

	/* FIXME: Port can only be DFP_U. */

	/* Make sure we have compatiple pin configurations */
	if (!(FUNC0(port->vdo) &
	      FUNC1(alt->vdo)) &&
	    !(FUNC1(port->vdo) &
	      FUNC0(alt->vdo)))
		return -ENODEV;

	ret = FUNC6(&alt->dev.kobj, &dp_altmode_group);
	if (ret)
		return ret;

	dp = FUNC3(&alt->dev, sizeof(*dp), GFP_KERNEL);
	if (!dp)
		return -ENOMEM;

	FUNC2(&dp->work, dp_altmode_work);
	FUNC4(&dp->lock);
	dp->port = port;
	dp->alt = alt;

	alt->desc = "DisplayPort";
	alt->ops = &dp_altmode_ops;

	FUNC8(alt, dp);

	dp->state = DP_STATE_ENTER;
	FUNC5(&dp->work);

	return 0;
}