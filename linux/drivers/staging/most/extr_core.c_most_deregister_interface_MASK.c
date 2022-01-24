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
struct most_interface {int num_channels; int /*<<< orphan*/  dev; struct most_channel* p; int /*<<< orphan*/  description; } ;
struct TYPE_8__ {TYPE_3__* comp; } ;
struct TYPE_6__ {TYPE_1__* comp; } ;
struct most_channel {int /*<<< orphan*/  dev_id; int /*<<< orphan*/  dev; int /*<<< orphan*/  list; TYPE_4__ pipe1; TYPE_2__ pipe0; int /*<<< orphan*/  channel_id; int /*<<< orphan*/  iface; struct most_channel** channel; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* disconnect_channel ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* disconnect_channel ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct most_channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mdev_id ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct most_interface *iface)
{
	int i;
	struct most_channel *c;

	FUNC5("deregistering device %s (%s)\n", FUNC0(&iface->dev),
		iface->description);
	for (i = 0; i < iface->num_channels; i++) {
		c = iface->p->channel[i];
		if (c->pipe0.comp)
			c->pipe0.comp->disconnect_channel(c->iface,
							c->channel_id);
		if (c->pipe1.comp)
			c->pipe1.comp->disconnect_channel(c->iface,
							c->channel_id);
		c->pipe0.comp = NULL;
		c->pipe1.comp = NULL;
		FUNC4(&c->list);
		FUNC1(&c->dev);
		FUNC3(c);
	}

	FUNC2(&mdev_id, iface->p->dev_id);
	FUNC3(iface->p);
	FUNC1(&iface->dev);
}