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
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct uwb_rc {TYPE_1__ notifs_chain; } ;
struct uwb_notifs_handler {int /*<<< orphan*/  list_node; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct uwb_rc *rc, struct uwb_notifs_handler *entry)
{
	if (FUNC1(&rc->notifs_chain.mutex))
		return -ERESTARTSYS;
	FUNC0(&entry->list_node);
	FUNC2(&rc->notifs_chain.mutex);
	return 0;
}