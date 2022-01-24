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
struct wdtbd70528 {int /*<<< orphan*/  dev; } ;
struct watchdog_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct wdtbd70528*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct wdtbd70528* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdt)
{
	struct wdtbd70528 *w = FUNC2(wdt);

	FUNC1(w->dev, "WDT stopping...\n");
	return FUNC0(w, 0);
}