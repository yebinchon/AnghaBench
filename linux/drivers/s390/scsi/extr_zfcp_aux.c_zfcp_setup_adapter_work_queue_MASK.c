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
struct zfcp_adapter {scalar_t__ work_queue; TYPE_1__* ccw_device; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int TASK_COMM_LEN ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC3(struct zfcp_adapter *adapter)
{
	char name[TASK_COMM_LEN];

	FUNC2(name, sizeof(name), "zfcp_q_%s",
		 FUNC1(&adapter->ccw_device->dev));
	adapter->work_queue = FUNC0(name, WQ_MEM_RECLAIM);

	if (adapter->work_queue)
		return 0;
	return -ENOMEM;
}