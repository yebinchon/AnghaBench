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
typedef  int /*<<< orphan*/  u32 ;
struct zfcp_fc_event {int code; int /*<<< orphan*/  list; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  list; } ;
struct zfcp_adapter {TYPE_1__ events; int /*<<< orphan*/  work_queue; } ;
typedef  enum fc_host_event_code { ____Placeholder_fc_host_event_code } fc_host_event_code ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct zfcp_fc_event* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct zfcp_adapter *adapter,
			   enum fc_host_event_code event_code, u32 event_data)
{
	struct zfcp_fc_event *event;

	event = FUNC0(sizeof(struct zfcp_fc_event), GFP_ATOMIC);
	if (!event)
		return;

	event->code = event_code;
	event->data = event_data;

	FUNC3(&adapter->events.list_lock);
	FUNC1(&event->list, &adapter->events.list);
	FUNC4(&adapter->events.list_lock);

	FUNC2(adapter->work_queue, &adapter->events.work);
}