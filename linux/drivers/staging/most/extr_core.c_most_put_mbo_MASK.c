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
struct TYPE_2__ {scalar_t__ direction; } ;
struct most_channel {int /*<<< orphan*/  mbo_nq_level; TYPE_1__ cfg; } ;
struct mbo {struct most_channel* context; } ;

/* Variables and functions */
 scalar_t__ MOST_CH_TX ; 
 int /*<<< orphan*/  FUNC0 (struct mbo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mbo*) ; 

void FUNC3(struct mbo *mbo)
{
	struct most_channel *c = mbo->context;

	if (c->cfg.direction == MOST_CH_TX) {
		FUNC0(mbo);
		return;
	}
	FUNC2(mbo);
	FUNC1(&c->mbo_nq_level);
}