#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time64_t ;
struct watchdog_device {int dummy; } ;
struct TYPE_3__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  SCHEDOP_watchdog ; 
 int /*<<< orphan*/  FUNC2 (struct watchdog_device*) ; 
 TYPE_1__ wdt ; 
 int /*<<< orphan*/  wdt_expires ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd)
{
	time64_t expires;
	int err;

	expires = FUNC2(wdd);
	if (!wdt.id)
		err = FUNC1(SCHEDOP_watchdog, &wdt);
	else
		err = -EBUSY;
	if (err > 0) {
		wdt.id = err;
		wdt_expires = expires;
		err = 0;
	} else
		FUNC0(!err);

	return err;
}