#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  disable; int /*<<< orphan*/  disable_lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* ar7_wdt ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(u32 value)
{
	FUNC1(ar7_wdt->disable_lock, 0x7777);
	if ((FUNC0(ar7_wdt->disable_lock) & 3) == 1) {
		FUNC1(ar7_wdt->disable_lock, 0xcccc);
		if ((FUNC0(ar7_wdt->disable_lock) & 3) == 2) {
			FUNC1(ar7_wdt->disable_lock, 0xdddd);
			if ((FUNC0(ar7_wdt->disable_lock) & 3) == 3) {
				FUNC1(ar7_wdt->disable, value);
				return;
			}
		}
	}
	FUNC2("failed to unlock WDT disable reg\n");
}