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
struct most_channel {int /*<<< orphan*/  fifo_lock; int /*<<< orphan*/  trash_fifo; } ;
struct mbo {int /*<<< orphan*/  list; struct most_channel* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(struct mbo *mbo)
{
	unsigned long flags;
	struct most_channel *c = mbo->context;

	FUNC1(&c->fifo_lock, flags);
	FUNC0(&mbo->list, &c->trash_fifo);
	FUNC2(&c->fifo_lock, flags);
}