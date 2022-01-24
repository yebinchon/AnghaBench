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
struct inode {struct dev_data* i_private; } ;
struct file {struct dev_data* private_data; } ;
struct dev_data {scalar_t__ state; int /*<<< orphan*/  lock; scalar_t__ ev_next; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ STATE_DEV_DISABLED ; 
 scalar_t__ STATE_DEV_OPENED ; 
 int /*<<< orphan*/  FUNC0 (struct dev_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3 (struct inode *inode, struct file *fd)
{
	struct dev_data		*dev = inode->i_private;
	int			value = -EBUSY;

	FUNC1(&dev->lock);
	if (dev->state == STATE_DEV_DISABLED) {
		dev->ev_next = 0;
		dev->state = STATE_DEV_OPENED;
		fd->private_data = dev;
		FUNC0 (dev);
		value = 0;
	}
	FUNC2(&dev->lock);
	return value;
}