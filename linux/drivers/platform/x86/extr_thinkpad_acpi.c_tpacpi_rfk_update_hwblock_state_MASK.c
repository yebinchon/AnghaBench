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
struct tpacpi_rfk {int /*<<< orphan*/  rfkill; } ;

/* Variables and functions */
 unsigned int TPACPI_RFK_SW_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct tpacpi_rfk** tpacpi_rfkill_switches ; 

__attribute__((used)) static void FUNC1(bool blocked)
{
	unsigned int i;
	struct tpacpi_rfk *tp_rfk;

	for (i = 0; i < TPACPI_RFK_SW_MAX; i++) {
		tp_rfk = tpacpi_rfkill_switches[i];
		if (tp_rfk) {
			if (FUNC0(tp_rfk->rfkill,
						blocked)) {
				/* ignore -- we track sw block */
			}
		}
	}
}