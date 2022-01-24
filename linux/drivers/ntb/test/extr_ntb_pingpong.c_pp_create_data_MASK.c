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
struct TYPE_2__ {int /*<<< orphan*/  function; } ;
struct pp_ctx {TYPE_1__ timer; int /*<<< orphan*/  lock; int /*<<< orphan*/  count; struct ntb_dev* ntb; } ;
struct ntb_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct pp_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pp_ctx* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pp_timer_func ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct pp_ctx *FUNC5(struct ntb_dev *ntb)
{
	struct pp_ctx *pp;

	pp = FUNC2(&ntb->dev, sizeof(*pp), GFP_KERNEL);
	if (!pp)
		return FUNC0(-ENOMEM);

	pp->ntb = ntb;
	FUNC1(&pp->count, 0);
	FUNC4(&pp->lock);
	FUNC3(&pp->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
	pp->timer.function = pp_timer_func;

	return pp;
}