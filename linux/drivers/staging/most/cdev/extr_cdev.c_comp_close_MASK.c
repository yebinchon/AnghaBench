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
struct inode {int /*<<< orphan*/  i_cdev; } ;
struct file {int dummy; } ;
struct comp_channel {int /*<<< orphan*/  io_mutex; scalar_t__ dev; int /*<<< orphan*/  unlink; scalar_t__ access_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comp_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct comp_channel*) ; 
 struct comp_channel* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *filp)
{
	struct comp_channel *c = FUNC6(inode->i_cdev);

	FUNC1(&c->io_mutex);
	FUNC3(&c->unlink);
	c->access_ref = 0;
	FUNC4(&c->unlink);
	if (c->dev) {
		FUNC5(c);
		FUNC2(&c->io_mutex);
	} else {
		FUNC2(&c->io_mutex);
		FUNC0(c);
	}
	return 0;
}