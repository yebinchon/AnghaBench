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
struct zfcp_adapter {int /*<<< orphan*/  status; int /*<<< orphan*/  ccw_device; } ;

/* Variables and functions */
 int ZFCP_STATUS_ADAPTER_SIOSL_ISSUED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct zfcp_adapter *adapter)
{
	int rc;

	if (FUNC1(&adapter->status) & ZFCP_STATUS_ADAPTER_SIOSL_ISSUED)
		return;

	rc = FUNC2(adapter->ccw_device);
	if (!rc)
		FUNC0(ZFCP_STATUS_ADAPTER_SIOSL_ISSUED,
				&adapter->status);
}