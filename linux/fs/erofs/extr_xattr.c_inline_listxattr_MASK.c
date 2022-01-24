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
struct listxattr_iter {int buffer_ofs; int /*<<< orphan*/  it; int /*<<< orphan*/  dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list_xattr_handlers ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct listxattr_iter *it)
{
	int ret;
	unsigned int remaining;

	ret = FUNC1(&it->it, FUNC0(it->dentry));
	if (ret < 0)
		return ret;

	remaining = ret;
	while (remaining) {
		ret = FUNC2(&it->it, &list_xattr_handlers, &remaining);
		if (ret)
			break;
	}
	FUNC3(&it->it);
	return ret ? ret : it->buffer_ofs;
}