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
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ caused_reboot; } ;

/* Variables and functions */
 int WDIOF_CARDRESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ watchdog ; 

__attribute__((used)) static int FUNC2(void)
{
	int status = 0;

	FUNC0(&watchdog.lock);
	status = (watchdog.caused_reboot) ? WDIOF_CARDRESET : 0;
	FUNC1(&watchdog.lock);

	return status;
}