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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int) ; 

void FUNC3(void *sel, struct adapter *adapter)
{
	int i, j = 1;

	FUNC1(sel, "======= MAC REG =======\n");

	for (i = 0x0; i < 0x800; i += 4) {
		if (j%4 == 1)
			FUNC1(sel, "0x%03x", i);
		FUNC0(sel, " 0x%08x ", FUNC2(adapter, i));
		if ((j++)%4 == 0)
			FUNC0(sel, "\n");
	}
}