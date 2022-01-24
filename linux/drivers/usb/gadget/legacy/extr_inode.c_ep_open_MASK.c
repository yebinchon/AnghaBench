#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {struct ep_data* i_private; } ;
struct file {struct ep_data* private_data; } ;
struct ep_data {scalar_t__ state; int /*<<< orphan*/  lock; TYPE_1__* dev; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {scalar_t__ state; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int EBUSY ; 
 int EINTR ; 
 int ENOENT ; 
 scalar_t__ STATE_DEV_UNBOUND ; 
 scalar_t__ STATE_EP_DISABLED ; 
 scalar_t__ STATE_EP_READY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ep_data*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7 (struct inode *inode, struct file *fd)
{
	struct ep_data		*data = inode->i_private;
	int			value = -EBUSY;

	if (FUNC3(&data->lock) != 0)
		return -EINTR;
	FUNC5 (&data->dev->lock);
	if (data->dev->state == STATE_DEV_UNBOUND)
		value = -ENOENT;
	else if (data->state == STATE_EP_DISABLED) {
		value = 0;
		data->state = STATE_EP_READY;
		FUNC2 (data);
		fd->private_data = data;
		FUNC1 (data->dev, "%s ready\n", data->name);
	} else
		FUNC0 (data->dev, "%s state %d\n",
			data->name, data->state);
	FUNC6 (&data->dev->lock);
	FUNC4(&data->lock);
	return value;
}