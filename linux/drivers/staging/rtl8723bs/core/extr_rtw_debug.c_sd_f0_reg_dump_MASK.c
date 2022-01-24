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
 int /*<<< orphan*/  FUNC1 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int) ; 

void FUNC3(void *sel, struct adapter *adapter)
{
	int i;

	for (i = 0x0; i <= 0xff; i++) {
		if (i%16 == 0)
			FUNC1(sel, "0x%02x ", i);

		FUNC0(sel, "%02x ", FUNC2(adapter, i));

		if (i%16 == 15)
			FUNC0(sel, "\n");
		else if (i%8 == 7)
			FUNC0(sel, "\t");
	}
}