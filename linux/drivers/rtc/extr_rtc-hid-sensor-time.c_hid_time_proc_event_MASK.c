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
struct hid_time_state {int /*<<< orphan*/  comp_last_time; int /*<<< orphan*/  lock_last_time; int /*<<< orphan*/  time_buf; int /*<<< orphan*/  last_time; } ;
struct hid_sensor_hub_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct hid_time_state* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct hid_sensor_hub_device *hsdev,
				unsigned usage_id, void *priv)
{
	unsigned long flags;
	struct hid_time_state *time_state = FUNC1(priv);

	FUNC2(&time_state->lock_last_time, flags);
	time_state->last_time = time_state->time_buf;
	FUNC3(&time_state->lock_last_time, flags);
	FUNC0(&time_state->comp_last_time);
	return 0;
}