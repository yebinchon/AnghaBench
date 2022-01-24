#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct most_interface {int dummy; } ;
struct most_channel_config {int /*<<< orphan*/  num_buffers; } ;
struct TYPE_10__ {int /*<<< orphan*/  owner; } ;
struct comp_channel {int channel_id; TYPE_3__ cdev; int /*<<< orphan*/  list; int /*<<< orphan*/  fifo; TYPE_1__* dev; int /*<<< orphan*/  devno; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  wq; int /*<<< orphan*/  unlink; scalar_t__ access_ref; struct most_channel_config* cfg; struct most_interface* iface; } ;
struct TYPE_9__ {int /*<<< orphan*/  minor_id; int /*<<< orphan*/  class; int /*<<< orphan*/  major; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ch_list_lock ; 
 int /*<<< orphan*/  channel_fops ; 
 int /*<<< orphan*/  channel_list ; 
 TYPE_2__ comp ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 struct comp_channel* FUNC8 (struct most_interface*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct comp_channel*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct comp_channel* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC24(struct most_interface *iface, int channel_id,
		      struct most_channel_config *cfg, char *name, char *args)
{
	struct comp_channel *c;
	unsigned long cl_flags;
	int retval;
	int current_minor;

	if ((!iface) || (!cfg) || (!name)) {
		FUNC20("Probing component with bad arguments");
		return -EINVAL;
	}
	c = FUNC8(iface, channel_id);
	if (c)
		return -EEXIST;

	current_minor = FUNC9(&comp.minor_id, 0, 0, GFP_KERNEL);
	if (current_minor < 0)
		return current_minor;

	c = FUNC16(sizeof(*c), GFP_KERNEL);
	if (!c) {
		retval = -ENOMEM;
		goto err_remove_ida;
	}

	c->devno = FUNC2(comp.major, current_minor);
	FUNC6(&c->cdev, &channel_fops);
	c->cdev.owner = THIS_MODULE;
	retval = FUNC4(&c->cdev, c->devno, 1);
	if (retval < 0)
		goto err_free_c;
	c->iface = iface;
	c->cfg = cfg;
	c->channel_id = channel_id;
	c->access_ref = 0;
	FUNC21(&c->unlink);
	FUNC0(c->fifo);
	retval = FUNC12(&c->fifo, cfg->num_buffers, GFP_KERNEL);
	if (retval)
		goto err_del_cdev_and_free_channel;
	FUNC11(&c->wq);
	FUNC19(&c->io_mutex);
	FUNC22(&ch_list_lock, cl_flags);
	FUNC17(&c->list, &channel_list);
	FUNC23(&ch_list_lock, cl_flags);
	c->dev = FUNC7(comp.class, NULL, c->devno, NULL, "%s", name);

	if (FUNC1(c->dev)) {
		retval = FUNC3(c->dev);
		FUNC20("failed to create new device node %s\n", name);
		goto err_free_kfifo_and_del_list;
	}
	FUNC15(&c->dev->kobj, KOBJ_ADD);
	return 0;

err_free_kfifo_and_del_list:
	FUNC13(&c->fifo);
	FUNC18(&c->list);
err_del_cdev_and_free_channel:
	FUNC5(&c->cdev);
err_free_c:
	FUNC14(c);
err_remove_ida:
	FUNC10(&comp.minor_id, current_minor);
	return retval;
}