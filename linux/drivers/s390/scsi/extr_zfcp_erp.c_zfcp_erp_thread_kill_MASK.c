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
struct zfcp_adapter {int /*<<< orphan*/  erp_running_head; int /*<<< orphan*/  erp_ready_head; int /*<<< orphan*/ * erp_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct zfcp_adapter *adapter)
{
	FUNC1(adapter->erp_thread);
	adapter->erp_thread = NULL;
	FUNC0(!FUNC2(&adapter->erp_ready_head));
	FUNC0(!FUNC2(&adapter->erp_running_head));
}