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
struct lcs_card {unsigned long thread_allowed_mask; int /*<<< orphan*/  wait_q; int /*<<< orphan*/  mask_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct lcs_card *card, unsigned long threads)
{
	unsigned long flags;

	FUNC0(&card->mask_lock, flags);
	card->thread_allowed_mask = threads;
	FUNC1(&card->mask_lock, flags);
	FUNC2(&card->wait_q);
}