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
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  target_watch ; 

__attribute__((used)) static int FUNC2(struct notifier_block *notifier,
				unsigned long event,
				void *data)
{
	int err;

	err = FUNC1(&target_watch);
	if (err)
		FUNC0("Failed to set balloon watcher\n");

	return NOTIFY_DONE;
}