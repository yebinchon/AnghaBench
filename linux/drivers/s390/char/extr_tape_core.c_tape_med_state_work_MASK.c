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
struct tape_med_state_work_data {int state; int /*<<< orphan*/  work; int /*<<< orphan*/  device; } ;
struct tape_device {int dummy; } ;
typedef  enum tape_medium_state { ____Placeholder_tape_medium_state } tape_medium_state ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tape_med_state_work_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tape_device*) ; 
 int /*<<< orphan*/  tape_med_state_work_handler ; 

__attribute__((used)) static void
FUNC4(struct tape_device *device, enum tape_medium_state state)
{
	struct tape_med_state_work_data *p;

	p = FUNC1(sizeof(*p), GFP_ATOMIC);
	if (p) {
		FUNC0(&p->work, tape_med_state_work_handler);
		p->device = FUNC3(device);
		p->state = state;
		FUNC2(&p->work);
	}
}