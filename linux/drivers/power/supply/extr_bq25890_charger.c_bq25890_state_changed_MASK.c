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
struct bq25890_state {scalar_t__ chrg_status; scalar_t__ chrg_fault; scalar_t__ online; scalar_t__ bat_fault; scalar_t__ boost_fault; scalar_t__ vsys_status; } ;
struct bq25890_device {int /*<<< orphan*/  lock; struct bq25890_state state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct bq25890_device *bq,
				  struct bq25890_state *new_state)
{
	struct bq25890_state old_state;

	FUNC0(&bq->lock);
	old_state = bq->state;
	FUNC1(&bq->lock);

	return (old_state.chrg_status != new_state->chrg_status ||
		old_state.chrg_fault != new_state->chrg_fault	||
		old_state.online != new_state->online		||
		old_state.bat_fault != new_state->bat_fault	||
		old_state.boost_fault != new_state->boost_fault ||
		old_state.vsys_status != new_state->vsys_status);
}