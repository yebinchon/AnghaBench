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
 int /*<<< orphan*/  fe_watch ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  xenbus_frontend ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct notifier_block *notifier,
				   unsigned long event,
				   void *data)
{
	/* reset devices in Connected or Closed state */
	if (FUNC1())
		FUNC3();
	/* Enumerate devices in xenstore and watch for changes. */
	FUNC2(&xenbus_frontend);
	FUNC0(&fe_watch);

	return NOTIFY_DONE;
}