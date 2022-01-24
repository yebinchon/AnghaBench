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
struct watchdog_device {unsigned int timeout; } ;
struct sp5100_tco {int /*<<< orphan*/  tcobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sp5100_tco* FUNC1 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd,
				 unsigned int t)
{
	struct sp5100_tco *tco = FUNC1(wdd);

	/* Write new heartbeat to watchdog */
	FUNC2(t, FUNC0(tco->tcobase));

	wdd->timeout = t;

	return 0;
}