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
struct rpmsg_ctrldev {int /*<<< orphan*/  dev; } ;
struct inode {int /*<<< orphan*/  i_cdev; } ;
struct file {struct rpmsg_ctrldev* private_data; } ;

/* Variables and functions */
 struct rpmsg_ctrldev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *filp)
{
	struct rpmsg_ctrldev *ctrldev = FUNC0(inode->i_cdev);

	FUNC1(&ctrldev->dev);
	filp->private_data = ctrldev;

	return 0;
}