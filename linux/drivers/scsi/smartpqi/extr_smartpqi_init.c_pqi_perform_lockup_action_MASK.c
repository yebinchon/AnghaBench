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
#define  NONE 130 
#define  PANIC 129 
#define  REBOOT 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int pqi_lockup_action ; 

__attribute__((used)) static void FUNC2(void)
{
	switch (pqi_lockup_action) {
	case PANIC:
		FUNC1("FATAL: Smart Family Controller lockup detected");
		break;
	case REBOOT:
		FUNC0();
		break;
	case NONE:
	default:
		break;
	}
}