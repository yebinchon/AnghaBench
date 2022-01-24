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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  PM_HIBERNATION_PREPARE 133 
#define  PM_POST_HIBERNATION 132 
#define  PM_POST_RESTORE 131 
#define  PM_POST_SUSPEND 130 
#define  PM_RESTORE_PREPARE 129 
#define  PM_SUSPEND_PREPARE 128 
 int FUNC1 () ; 
 int FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct notifier_block *b, unsigned long v, void *d)
{
	FUNC0("pm notif %lu\n", v);

	switch (v) {
	case PM_SUSPEND_PREPARE:
	case PM_HIBERNATION_PREPARE:
	case PM_RESTORE_PREPARE:
		FUNC0("suspending displays\n");
		return FUNC2();

	case PM_POST_SUSPEND:
	case PM_POST_HIBERNATION:
	case PM_POST_RESTORE:
		FUNC0("resuming displays\n");
		return FUNC1();

	default:
		return 0;
	}
}