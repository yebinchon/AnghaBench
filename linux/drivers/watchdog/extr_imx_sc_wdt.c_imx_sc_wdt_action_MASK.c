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
 int /*<<< orphan*/  SC_IRQ_GROUP_WDOG ; 
 int /*<<< orphan*/  SC_IRQ_WDOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct notifier_block*) ; 

__attribute__((used)) static void FUNC2(void *data)
{
	struct notifier_block *wdt_notifier = data;

	FUNC1(wdt_notifier);
	FUNC0(SC_IRQ_GROUP_WDOG,
				 SC_IRQ_WDOG,
				 false);
}