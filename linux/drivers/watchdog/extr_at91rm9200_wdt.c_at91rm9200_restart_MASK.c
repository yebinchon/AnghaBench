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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_ST_CR ; 
 int AT91_ST_EXTEN ; 
 int AT91_ST_RSTEN ; 
 int /*<<< orphan*/  AT91_ST_WDMR ; 
 int AT91_ST_WDRST ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  regmap_st ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *this,
					unsigned long mode, void *cmd)
{
	/*
	 * Perform a hardware reset with the use of the Watchdog timer.
	 */
	FUNC2(regmap_st, AT91_ST_WDMR,
		     AT91_ST_RSTEN | AT91_ST_EXTEN | 1);
	FUNC2(regmap_st, AT91_ST_CR, AT91_ST_WDRST);

	FUNC0(2000);

	FUNC1("Unable to restart system\n");
	return NOTIFY_DONE;
}