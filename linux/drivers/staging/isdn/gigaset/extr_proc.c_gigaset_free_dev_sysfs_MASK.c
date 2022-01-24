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
struct cardstate {int /*<<< orphan*/  tty_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_INIT ; 
 int /*<<< orphan*/  dev_attr_cidmode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void FUNC2(struct cardstate *cs)
{
	if (!cs->tty_dev)
		return;

	FUNC1(DEBUG_INIT, "removing sysfs entries");
	FUNC0(cs->tty_dev, &dev_attr_cidmode);
}