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
struct ctlr_info {TYPE_1__* pdev; } ;
struct CommandList {int /*<<< orphan*/ * waiting; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int IO_OK ; 
 unsigned long NO_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*,struct CommandList*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ctlr_info *h,
	struct CommandList *c, int reply_queue, unsigned long timeout_msecs)
{
	FUNC0(wait);

	c->waiting = &wait;
	FUNC1(h, c, reply_queue);
	if (timeout_msecs == NO_TIMEOUT) {
		/* TODO: get rid of this no-timeout thing */
		FUNC4(&wait);
		return IO_OK;
	}
	if (!FUNC5(&wait,
					FUNC3(timeout_msecs))) {
		FUNC2(&h->pdev->dev, "Command timed out.\n");
		return -ETIMEDOUT;
	}
	return IO_OK;
}