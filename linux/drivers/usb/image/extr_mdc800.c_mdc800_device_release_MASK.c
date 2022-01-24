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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  io_lock; scalar_t__ open; int /*<<< orphan*/  download_urb; int /*<<< orphan*/  write_urb; int /*<<< orphan*/  irq_urb; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ NOT_CONNECTED ; 
 TYPE_1__* mdc800 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (struct inode* inode, struct file *file)
{
	int retval=0;

	FUNC0(&mdc800->io_lock);
	if (mdc800->open && (mdc800->state != NOT_CONNECTED))
	{
		FUNC2(mdc800->irq_urb);
		FUNC2(mdc800->write_urb);
		FUNC2(mdc800->download_urb);
		mdc800->open=0;
	}
	else
	{
		retval=-EIO;
	}

	FUNC1(&mdc800->io_lock);
	return retval;
}