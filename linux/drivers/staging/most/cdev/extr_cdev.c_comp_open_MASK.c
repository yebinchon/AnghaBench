#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_cdev; } ;
struct file {int f_flags; struct comp_channel* private_data; } ;
struct comp_channel {int access_ref; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  channel_id; int /*<<< orphan*/  iface; scalar_t__ mbo_offs; int /*<<< orphan*/  dev; TYPE_1__* cfg; } ;
struct TYPE_4__ {int /*<<< orphan*/  cc; } ;
struct TYPE_3__ {scalar_t__ direction; } ;

/* Variables and functions */
 int EACCES ; 
 int EBUSY ; 
 int ENODEV ; 
 scalar_t__ MOST_CH_RX ; 
 scalar_t__ MOST_CH_TX ; 
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 TYPE_2__ comp ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct comp_channel* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *filp)
{
	struct comp_channel *c;
	int ret;

	c = FUNC4(inode->i_cdev);
	filp->private_data = c;

	if (((c->cfg->direction == MOST_CH_RX) &&
	     ((filp->f_flags & O_ACCMODE) != O_RDONLY)) ||
	     ((c->cfg->direction == MOST_CH_TX) &&
		((filp->f_flags & O_ACCMODE) != O_WRONLY))) {
		FUNC3("WARN: Access flags mismatch\n");
		return -EACCES;
	}

	FUNC1(&c->io_mutex);
	if (!c->dev) {
		FUNC3("WARN: Device is destroyed\n");
		FUNC2(&c->io_mutex);
		return -ENODEV;
	}

	if (c->access_ref) {
		FUNC3("WARN: Device is busy\n");
		FUNC2(&c->io_mutex);
		return -EBUSY;
	}

	c->mbo_offs = 0;
	ret = FUNC0(c->iface, c->channel_id, &comp.cc);
	if (!ret)
		c->access_ref = 1;
	FUNC2(&c->io_mutex);
	return ret;
}