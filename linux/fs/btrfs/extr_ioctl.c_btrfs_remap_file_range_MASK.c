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
struct file {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int REMAP_FILE_ADVISORY ; 
 unsigned int REMAP_FILE_DEDUP ; 
 int FUNC0 (struct file*,struct file*,int,int,int) ; 
 int FUNC1 (struct inode*,int,int,struct inode*,int) ; 
 int FUNC2 (struct file*,int,struct file*,int,int*,unsigned int) ; 
 struct inode* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct inode*) ; 

loff_t FUNC8(struct file *src_file, loff_t off,
		struct file *dst_file, loff_t destoff, loff_t len,
		unsigned int remap_flags)
{
	struct inode *src_inode = FUNC3(src_file);
	struct inode *dst_inode = FUNC3(dst_file);
	bool same_inode = dst_inode == src_inode;
	int ret;

	if (remap_flags & ~(REMAP_FILE_DEDUP | REMAP_FILE_ADVISORY))
		return -EINVAL;

	if (same_inode)
		FUNC4(src_inode);
	else
		FUNC6(src_inode, dst_inode);

	ret = FUNC2(src_file, off, dst_file, destoff,
					  &len, remap_flags);
	if (ret < 0 || len == 0)
		goto out_unlock;

	if (remap_flags & REMAP_FILE_DEDUP)
		ret = FUNC1(src_inode, off, len, dst_inode, destoff);
	else
		ret = FUNC0(dst_file, src_file, off, len, destoff);

out_unlock:
	if (same_inode)
		FUNC5(src_inode);
	else
		FUNC7(src_inode, dst_inode);

	return ret < 0 ? ret : len;
}