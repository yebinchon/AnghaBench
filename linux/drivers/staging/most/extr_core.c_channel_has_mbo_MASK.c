#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct most_interface {TYPE_1__* p; } ;
struct TYPE_6__ {scalar_t__ num_buffers; struct core_component* comp; scalar_t__ refs; } ;
struct TYPE_5__ {scalar_t__ num_buffers; struct core_component* comp; scalar_t__ refs; } ;
struct most_channel {int /*<<< orphan*/  fifo_lock; int /*<<< orphan*/  fifo; TYPE_3__ pipe1; TYPE_2__ pipe0; } ;
struct core_component {int dummy; } ;
struct TYPE_4__ {struct most_channel** channel; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct most_interface *iface, int id,
		    struct core_component *comp)
{
	struct most_channel *c = iface->p->channel[id];
	unsigned long flags;
	int empty;

	if (FUNC3(!c))
		return -EINVAL;

	if (c->pipe0.refs && c->pipe1.refs &&
	    ((comp == c->pipe0.comp && c->pipe0.num_buffers <= 0) ||
	     (comp == c->pipe1.comp && c->pipe1.num_buffers <= 0)))
		return 0;

	FUNC1(&c->fifo_lock, flags);
	empty = FUNC0(&c->fifo);
	FUNC2(&c->fifo_lock, flags);
	return !empty;
}