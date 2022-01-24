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
 int /*<<< orphan*/  SYSC_RSTSTAT ; 
 int WDIOF_CARDRESET ; 
 int WDT_RST_CAUSE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void)
{
	if (FUNC0(SYSC_RSTSTAT) & WDT_RST_CAUSE)
		return WDIOF_CARDRESET;

	return 0;
}