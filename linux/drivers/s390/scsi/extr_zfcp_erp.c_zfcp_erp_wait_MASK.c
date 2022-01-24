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
struct zfcp_adapter {int /*<<< orphan*/  status; int /*<<< orphan*/  erp_done_wqh; } ;

/* Variables and functions */
 int ZFCP_STATUS_ADAPTER_ERP_PENDING ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(struct zfcp_adapter *adapter)
{
	FUNC1(adapter->erp_done_wqh,
		   !(FUNC0(&adapter->status) &
			ZFCP_STATUS_ADAPTER_ERP_PENDING));
}