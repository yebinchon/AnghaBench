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
typedef  int /*<<< orphan*/  u32 ;
struct slot {int /*<<< orphan*/  wq; } ;
struct event_info {int /*<<< orphan*/  work; struct slot* p_slot; int /*<<< orphan*/  event_type; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  interrupt_event_handler ; 
 struct event_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct slot *p_slot, u32 event_type)
{
	struct event_info *info;

	info = FUNC1(sizeof(*info), GFP_ATOMIC);
	if (!info)
		return -ENOMEM;

	info->event_type = event_type;
	info->p_slot = p_slot;
	FUNC0(&info->work, interrupt_event_handler);

	FUNC2(p_slot->wq, &info->work);

	return 0;
}