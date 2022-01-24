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
struct bq24257_state {scalar_t__ status; scalar_t__ fault; scalar_t__ power_good; } ;
struct TYPE_2__ {scalar_t__ status; scalar_t__ fault; scalar_t__ power_good; } ;
struct bq24257_device {int /*<<< orphan*/  lock; TYPE_1__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct bq24257_device *bq,
				  struct bq24257_state *new_state)
{
	int ret;

	FUNC0(&bq->lock);
	ret = (bq->state.status != new_state->status ||
	       bq->state.fault != new_state->fault ||
	       bq->state.power_good != new_state->power_good);
	FUNC1(&bq->lock);

	return ret;
}