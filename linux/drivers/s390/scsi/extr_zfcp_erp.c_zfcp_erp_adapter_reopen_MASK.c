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
struct zfcp_adapter {int /*<<< orphan*/  erp_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_ERP_ACTION_REOPEN_ADAPTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct zfcp_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*) ; 

void FUNC5(struct zfcp_adapter *adapter, int clear,
			     char *dbftag)
{
	unsigned long flags;

	FUNC3(adapter, clear);
	FUNC4(adapter);

	FUNC0(&adapter->erp_lock, flags);
	FUNC2(ZFCP_ERP_ACTION_REOPEN_ADAPTER, adapter,
				NULL, NULL, dbftag, 0);
	FUNC1(&adapter->erp_lock, flags);
}