#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  release; int /*<<< orphan*/  groups; struct TYPE_9__* parent; int /*<<< orphan*/  init_name; int /*<<< orphan*/ * bus; } ;
struct most_interface {unsigned int num_channels; TYPE_4__ dev; struct most_channel* p; int /*<<< orphan*/  description; TYPE_1__* channel_vector; int /*<<< orphan*/  poison_channel; int /*<<< orphan*/  configure; int /*<<< orphan*/  enqueue; } ;
struct TYPE_7__ {scalar_t__ packets_per_xact; scalar_t__ subbuffer_size; scalar_t__ buffer_size; scalar_t__ num_buffers; scalar_t__ data_type; scalar_t__ direction; } ;
struct most_channel {int dev_id; unsigned int channel_id; int keep_mbo; int enqueue_halt; int is_poisoned; TYPE_4__ dev; struct most_channel** channel; int /*<<< orphan*/  channel_list; int /*<<< orphan*/  list; int /*<<< orphan*/  nq_mutex; int /*<<< orphan*/  start_mutex; int /*<<< orphan*/  mbo_ref; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  halt_fifo; int /*<<< orphan*/  trash_fifo; int /*<<< orphan*/  fifo; int /*<<< orphan*/  fifo_lock; TYPE_2__ cfg; struct most_interface* iface; scalar_t__ is_starving; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_4__ dev; int /*<<< orphan*/  bus; } ;
struct TYPE_6__ {char* name_suffix; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int MAX_CHANNELS ; 
 int /*<<< orphan*/  STRING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  channel_attr_groups ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  interface_attr_groups ; 
 int /*<<< orphan*/  FUNC7 (struct most_channel*) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__ mc ; 
 int /*<<< orphan*/  mdev_id ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  release_channel ; 
 int /*<<< orphan*/  release_interface ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC17(struct most_interface *iface)
{
	unsigned int i;
	int id;
	struct most_channel *c;

	if (!iface || !iface->enqueue || !iface->configure ||
	    !iface->poison_channel || (iface->num_channels > MAX_CHANNELS)) {
		FUNC12("Bad interface or channel overflow\n");
		return -EINVAL;
	}

	id = FUNC4(&mdev_id, 0, 0, GFP_KERNEL);
	if (id < 0) {
		FUNC13("Failed to alloc mdev ID\n");
		return id;
	}

	iface->p = FUNC8(sizeof(*iface->p), GFP_KERNEL);
	if (!iface->p) {
		FUNC5(&mdev_id, id);
		return -ENOMEM;
	}

	FUNC0(&iface->p->channel_list);
	iface->p->dev_id = id;
	FUNC16(iface->p->name, iface->description, sizeof(iface->p->name));
	iface->dev.init_name = iface->p->name;
	iface->dev.bus = &mc.bus;
	iface->dev.parent = &mc.dev;
	iface->dev.groups = interface_attr_groups;
	iface->dev.release = release_interface;
	if (FUNC2(&iface->dev)) {
		FUNC12("registering iface->dev failed\n");
		FUNC7(iface->p);
		FUNC5(&mdev_id, id);
		return -ENOMEM;
	}

	for (i = 0; i < iface->num_channels; i++) {
		const char *name_suffix = iface->channel_vector[i].name_suffix;

		c = FUNC8(sizeof(*c), GFP_KERNEL);
		if (!c)
			goto err_free_resources;
		if (!name_suffix)
			FUNC14(c->name, STRING_SIZE, "ch%d", i);
		else
			FUNC14(c->name, STRING_SIZE, "%s", name_suffix);
		c->dev.init_name = c->name;
		c->dev.parent = &iface->dev;
		c->dev.groups = channel_attr_groups;
		c->dev.release = release_channel;
		iface->p->channel[i] = c;
		c->is_starving = 0;
		c->iface = iface;
		c->channel_id = i;
		c->keep_mbo = false;
		c->enqueue_halt = false;
		c->is_poisoned = false;
		c->cfg.direction = 0;
		c->cfg.data_type = 0;
		c->cfg.num_buffers = 0;
		c->cfg.buffer_size = 0;
		c->cfg.subbuffer_size = 0;
		c->cfg.packets_per_xact = 0;
		FUNC15(&c->fifo_lock);
		FUNC0(&c->fifo);
		FUNC0(&c->trash_fifo);
		FUNC0(&c->halt_fifo);
		FUNC6(&c->cleanup);
		FUNC1(&c->mbo_ref, 0);
		FUNC11(&c->start_mutex);
		FUNC11(&c->nq_mutex);
		FUNC9(&c->list, &iface->p->channel_list);
		if (FUNC2(&c->dev)) {
			FUNC12("registering c->dev failed\n");
			goto err_free_most_channel;
		}
	}
	FUNC13("registered new device mdev%d (%s)\n",
		id, iface->description);
	FUNC10(iface->description);
	return 0;

err_free_most_channel:
	FUNC7(c);

err_free_resources:
	while (i > 0) {
		c = iface->p->channel[--i];
		FUNC3(&c->dev);
		FUNC7(c);
	}
	FUNC7(iface->p);
	FUNC3(&iface->dev);
	FUNC5(&mdev_id, id);
	return -ENOMEM;
}