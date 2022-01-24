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
struct zfcp_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_adapter*) ; 

void FUNC3(struct zfcp_adapter *adapter, char *dbftag)
{
	FUNC1(adapter, ZFCP_STATUS_COMMON_RUNNING);
	FUNC0(adapter, ZFCP_STATUS_COMMON_ERP_FAILED, dbftag);
	FUNC2(adapter);
}