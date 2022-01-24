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
struct printer_dev {int /*<<< orphan*/  tx_reqs_active; int /*<<< orphan*/  tx_flush_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_reqs; } ;
struct inode {int dummy; } ;
struct file {struct printer_dev* private_data; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 struct inode* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct file *fd, loff_t start, loff_t end, int datasync)
{
	struct printer_dev	*dev = fd->private_data;
	struct inode *inode = FUNC0(fd);
	unsigned long		flags;
	int			tx_list_empty;

	FUNC1(inode);
	FUNC5(&dev->lock, flags);
	tx_list_empty = (FUNC3(FUNC4(&dev->tx_reqs)));
	FUNC6(&dev->lock, flags);

	if (!tx_list_empty) {
		/* Sleep until all data has been sent */
		FUNC7(dev->tx_flush_wait,
				(FUNC3(FUNC4(&dev->tx_reqs_active))));
	}
	FUNC2(inode);

	return 0;
}