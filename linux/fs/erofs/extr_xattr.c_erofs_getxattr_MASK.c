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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  sb; } ;
struct TYPE_3__ {scalar_t__ len; char const* name; } ;
struct getxattr_iter {int index; size_t buffer_size; TYPE_2__ it; void* buffer; TYPE_1__ name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOATTR ; 
 int ERANGE ; 
 scalar_t__ EROFS_NAME_LEN ; 
 int FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,struct getxattr_iter*) ; 
 int FUNC2 (struct inode*,struct getxattr_iter*) ; 
 scalar_t__ FUNC3 (char const*) ; 

int FUNC4(struct inode *inode, int index,
		   const char *name,
		   void *buffer, size_t buffer_size)
{
	int ret;
	struct getxattr_iter it;

	if (!name)
		return -EINVAL;

	ret = FUNC0(inode);
	if (ret)
		return ret;

	it.index = index;

	it.name.len = FUNC3(name);
	if (it.name.len > EROFS_NAME_LEN)
		return -ERANGE;
	it.name.name = name;

	it.buffer = buffer;
	it.buffer_size = buffer_size;

	it.it.sb = inode->i_sb;
	ret = FUNC1(inode, &it);
	if (ret == -ENOATTR)
		ret = FUNC2(inode, &it);
	return ret;
}