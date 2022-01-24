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
 int /*<<< orphan*/  ZFCP_ERP_ACTION_REOPEN_ADAPTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct zfcp_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_adapter*) ; 

__attribute__((used)) static void FUNC3(struct zfcp_adapter *adapter,
				    int clear_mask, char *dbftag)
{
	FUNC1(adapter, clear_mask);
	FUNC2(adapter);

	FUNC0(ZFCP_ERP_ACTION_REOPEN_ADAPTER,
				adapter, NULL, NULL, dbftag, 0);
}