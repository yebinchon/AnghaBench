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
struct vhost_test {int /*<<< orphan*/  dev; } ;
struct inode {int dummy; } ;
struct file {struct vhost_test* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vhost_test*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vhost_test*) ; 
 int /*<<< orphan*/  FUNC4 (struct vhost_test*,void**) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *f)
{
	struct vhost_test *n = f->private_data;
	void  *private;

	FUNC4(n, &private);
	FUNC3(n);
	FUNC2(&n->dev);
	FUNC1(&n->dev);
	/* We do an extra flush before freeing memory,
	 * since jobs can re-queue themselves. */
	FUNC3(n);
	FUNC0(n);
	return 0;
}