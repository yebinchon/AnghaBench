#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* comp; scalar_t__ refs; } ;
struct TYPE_6__ {TYPE_1__* comp; scalar_t__ refs; } ;
struct most_channel {int /*<<< orphan*/  channel_id; int /*<<< orphan*/  iface; TYPE_4__ pipe1; TYPE_2__ pipe0; int /*<<< orphan*/  fifo_lock; int /*<<< orphan*/  fifo; scalar_t__ is_poisoned; } ;
struct mbo {int /*<<< orphan*/  list; int /*<<< orphan*/ * num_buffers_ptr; struct most_channel* context; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* tx_completion ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* tx_completion ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbo*) ; 

__attribute__((used)) static void FUNC6(struct mbo *mbo)
{
	unsigned long flags;
	struct most_channel *c;

	c = mbo->context;

	if (c->is_poisoned) {
		FUNC5(mbo);
		return;
	}

	FUNC1(&c->fifo_lock, flags);
	++*mbo->num_buffers_ptr;
	FUNC0(&mbo->list, &c->fifo);
	FUNC2(&c->fifo_lock, flags);

	if (c->pipe0.refs && c->pipe0.comp->tx_completion)
		c->pipe0.comp->tx_completion(c->iface, c->channel_id);

	if (c->pipe1.refs && c->pipe1.comp->tx_completion)
		c->pipe1.comp->tx_completion(c->iface, c->channel_id);
}