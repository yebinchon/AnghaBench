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

/* Variables and functions */
 int ENOMEM ; 
 int WQ_MEM_RECLAIM ; 
 int WQ_UNBOUND ; 
 void* FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* recv_workqueue ; 
 void* send_workqueue ; 

__attribute__((used)) static int FUNC3(void)
{
	recv_workqueue = FUNC0("dlm_recv",
					 WQ_UNBOUND | WQ_MEM_RECLAIM, 1);
	if (!recv_workqueue) {
		FUNC2("can't start dlm_recv");
		return -ENOMEM;
	}

	send_workqueue = FUNC0("dlm_send",
					 WQ_UNBOUND | WQ_MEM_RECLAIM, 1);
	if (!send_workqueue) {
		FUNC2("can't start dlm_send");
		FUNC1(recv_workqueue);
		return -ENOMEM;
	}

	return 0;
}