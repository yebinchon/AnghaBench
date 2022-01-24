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
struct most_channel {int /*<<< orphan*/  fifo_lock; int /*<<< orphan*/  halt_fifo; scalar_t__ enqueue_halt; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct most_channel *c)
{
	bool empty;

	if (c->enqueue_halt)
		return false;

	FUNC1(&c->fifo_lock);
	empty = FUNC0(&c->halt_fifo);
	FUNC2(&c->fifo_lock);

	return !empty;
}