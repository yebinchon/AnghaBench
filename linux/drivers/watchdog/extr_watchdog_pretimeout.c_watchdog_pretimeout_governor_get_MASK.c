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
struct watchdog_device {TYPE_1__* gov; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  pretimeout_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,char*,char*) ; 

int FUNC3(struct watchdog_device *wdd, char *buf)
{
	int count = 0;

	FUNC0(&pretimeout_lock);
	if (wdd->gov)
		count = FUNC2(buf, "%s\n", wdd->gov->name);
	FUNC1(&pretimeout_lock);

	return count;
}