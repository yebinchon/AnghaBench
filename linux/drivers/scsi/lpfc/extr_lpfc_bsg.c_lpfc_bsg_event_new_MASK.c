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
typedef  void* uint32_t ;
struct lpfc_bsg_event {int reg_id; int /*<<< orphan*/  kref; int /*<<< orphan*/  wq; int /*<<< orphan*/ * dd_data; int /*<<< orphan*/  wait_time_stamp; void* req_id; void* type_mask; int /*<<< orphan*/  events_to_see; int /*<<< orphan*/  events_to_get; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct lpfc_bsg_event* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct lpfc_bsg_event *
FUNC4(uint32_t ev_mask, int ev_reg_id, uint32_t ev_req_id)
{
	struct lpfc_bsg_event *evt = FUNC3(sizeof(*evt), GFP_KERNEL);

	if (!evt)
		return NULL;

	FUNC0(&evt->events_to_get);
	FUNC0(&evt->events_to_see);
	evt->type_mask = ev_mask;
	evt->req_id = ev_req_id;
	evt->reg_id = ev_reg_id;
	evt->wait_time_stamp = jiffies;
	evt->dd_data = NULL;
	FUNC1(&evt->wq);
	FUNC2(&evt->kref);
	return evt;
}