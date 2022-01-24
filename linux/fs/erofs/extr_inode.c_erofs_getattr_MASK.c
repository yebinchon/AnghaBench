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
typedef  int /*<<< orphan*/  u32 ;
struct path {int /*<<< orphan*/  dentry; } ;
struct kstat {int attributes; int attributes_mask; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  datalayout; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode* const) ; 
 int STATX_ATTR_COMPRESSED ; 
 int STATX_ATTR_IMMUTABLE ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode* const,struct kstat*) ; 

int FUNC4(const struct path *path, struct kstat *stat,
		  u32 request_mask, unsigned int query_flags)
{
	struct inode *const inode = FUNC1(path->dentry);

	if (FUNC2(FUNC0(inode)->datalayout))
		stat->attributes |= STATX_ATTR_COMPRESSED;

	stat->attributes |= STATX_ATTR_IMMUTABLE;
	stat->attributes_mask |= (STATX_ATTR_COMPRESSED |
				  STATX_ATTR_IMMUTABLE);

	FUNC3(inode, stat);
	return 0;
}