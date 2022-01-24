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
typedef  void* u8 ;
struct nvmet_ctrl {int /*<<< orphan*/  async_event_work; int /*<<< orphan*/  lock; int /*<<< orphan*/  async_events; } ;
struct nvmet_async_event {int /*<<< orphan*/  entry; void* log_page; void* event_info; void* event_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nvmet_async_event* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct nvmet_ctrl *ctrl, u8 event_type,
		u8 event_info, u8 log_page)
{
	struct nvmet_async_event *aen;

	aen = FUNC0(sizeof(*aen), GFP_KERNEL);
	if (!aen)
		return;

	aen->event_type = event_type;
	aen->event_info = event_info;
	aen->log_page = log_page;

	FUNC2(&ctrl->lock);
	FUNC1(&aen->entry, &ctrl->async_events);
	FUNC3(&ctrl->lock);

	FUNC4(&ctrl->async_event_work);
}