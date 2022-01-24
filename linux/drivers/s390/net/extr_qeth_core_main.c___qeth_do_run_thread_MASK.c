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
struct qeth_card {unsigned long thread_start_mask; unsigned long thread_allowed_mask; unsigned long thread_running_mask; int /*<<< orphan*/  thread_mask_lock; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct qeth_card *card, unsigned long thread)
{
	unsigned long flags;
	int rc = 0;

	FUNC0(&card->thread_mask_lock, flags);
	if (card->thread_start_mask & thread) {
		if ((card->thread_allowed_mask & thread) &&
		    !(card->thread_running_mask & thread)) {
			rc = 1;
			card->thread_start_mask &= ~thread;
			card->thread_running_mask |= thread;
		} else
			rc = -EPERM;
	}
	FUNC1(&card->thread_mask_lock, flags);
	return rc;
}