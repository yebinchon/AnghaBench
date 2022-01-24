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
struct inode {int dummy; } ;
struct getxattr_iter {int buffer_size; int /*<<< orphan*/  it; } ;

/* Variables and functions */
 int ENOATTR ; 
 int /*<<< orphan*/  find_xattr_handlers ; 
 int FUNC0 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct getxattr_iter *it)
{
	int ret;
	unsigned int remaining;

	ret = FUNC0(&it->it, inode);
	if (ret < 0)
		return ret;

	remaining = ret;
	while (remaining) {
		ret = FUNC1(&it->it, &find_xattr_handlers, &remaining);
		if (ret != -ENOATTR)
			break;
	}
	FUNC2(&it->it);

	return ret ? ret : it->buffer_size;
}