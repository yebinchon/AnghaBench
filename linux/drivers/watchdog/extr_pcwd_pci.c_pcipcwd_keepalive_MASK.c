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
struct TYPE_2__ {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  io_addr; } ;

/* Variables and functions */
 scalar_t__ DEBUG ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ pcipcwd_private ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void)
{
	/* Re-trigger watchdog by writing to port 0 */
	FUNC2(&pcipcwd_private.io_lock);
	FUNC0(0x42, pcipcwd_private.io_addr);	/* send out any data */
	FUNC3(&pcipcwd_private.io_lock);

	if (debug >= DEBUG)
		FUNC1("Watchdog keepalive signal send\n");

	return 0;
}