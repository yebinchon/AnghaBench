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
struct qcom_rmtfs_mem {int /*<<< orphan*/  dev; } ;
struct inode {int dummy; } ;
struct file {struct qcom_rmtfs_mem* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct inode *inode, struct file *filp)
{
	struct qcom_rmtfs_mem *rmtfs_mem = filp->private_data;

	FUNC0(&rmtfs_mem->dev);

	return 0;
}