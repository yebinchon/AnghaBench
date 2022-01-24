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
struct mbo {int dummy; } ;
struct comp_channel {int /*<<< orphan*/  fifo; int /*<<< orphan*/  channel_id; int /*<<< orphan*/  iface; } ;
struct TYPE_2__ {int /*<<< orphan*/  cc; } ;

/* Variables and functions */
 TYPE_1__ comp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mbo**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbo**) ; 
 struct mbo* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct mbo *FUNC3(struct comp_channel *c, struct mbo **mbo)
{
	if (!FUNC1(&c->fifo, mbo)) {
		*mbo = FUNC2(c->iface, c->channel_id, &comp.cc);
		if (*mbo)
			FUNC0(&c->fifo, mbo, 1);
	}
	return *mbo;
}