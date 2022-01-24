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
typedef  int u32 ;
struct ns_thermal {scalar_t__ pvtmon; int /*<<< orphan*/  tz; } ;

/* Variables and functions */
 scalar_t__ PVTMON_CONTROL0 ; 
 int PVTMON_CONTROL0_SEL_MASK ; 
 int PVTMON_CONTROL0_SEL_TEMP_MONITOR ; 
 scalar_t__ PVTMON_STATUS ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(void *data, int *temp)
{
	struct ns_thermal *ns_thermal = data;
	int offset = FUNC1(ns_thermal->tz);
	int slope = FUNC2(ns_thermal->tz);
	u32 val;

	val = FUNC0(ns_thermal->pvtmon + PVTMON_CONTROL0);
	if ((val & PVTMON_CONTROL0_SEL_MASK) != PVTMON_CONTROL0_SEL_TEMP_MONITOR) {
		/* Clear current mode selection */
		val &= ~PVTMON_CONTROL0_SEL_MASK;

		/* Set temp monitor mode (it's the default actually) */
		val |= PVTMON_CONTROL0_SEL_TEMP_MONITOR;

		FUNC3(val, ns_thermal->pvtmon + PVTMON_CONTROL0);
	}

	val = FUNC0(ns_thermal->pvtmon + PVTMON_STATUS);
	*temp = slope * val + offset;

	return 0;
}