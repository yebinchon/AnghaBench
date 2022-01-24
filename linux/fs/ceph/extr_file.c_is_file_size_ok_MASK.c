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
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EDQUOT ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,size_t,scalar_t__) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct inode *src_inode, struct inode *dst_inode,
			   loff_t src_off, loff_t dst_off, size_t len)
{
	loff_t size, endoff;

	size = FUNC2(src_inode);
	/*
	 * Don't copy beyond source file EOF.  Instead of simply setting length
	 * to (size - src_off), just drop to VFS default implementation, as the
	 * local i_size may be stale due to other clients writing to the source
	 * inode.
	 */
	if (src_off + len > size) {
		FUNC1("Copy beyond EOF (%llu + %zu > %llu)\n",
		     src_off, len, size);
		return -EOPNOTSUPP;
	}
	size = FUNC2(dst_inode);

	endoff = dst_off + len;
	if (FUNC3(dst_inode, endoff))
		return -EOPNOTSUPP;

	if (FUNC0(dst_inode, endoff))
		return -EDQUOT;

	return 0;
}