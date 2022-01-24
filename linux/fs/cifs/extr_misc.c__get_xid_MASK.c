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
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  GlobalCurrentXid ; 
 int GlobalMaxActiveXid ; 
 int /*<<< orphan*/  GlobalMid_Lock ; 
 int GlobalTotalActiveXid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

unsigned int
FUNC3(void)
{
	unsigned int xid;

	FUNC1(&GlobalMid_Lock);
	GlobalTotalActiveXid++;

	/* keep high water mark for number of simultaneous ops in filesystem */
	if (GlobalTotalActiveXid > GlobalMaxActiveXid)
		GlobalMaxActiveXid = GlobalTotalActiveXid;
	if (GlobalTotalActiveXid > 65000)
		FUNC0(FYI, "warning: more than 65000 requests active\n");
	xid = GlobalCurrentXid++;
	FUNC2(&GlobalMid_Lock);
	return xid;
}