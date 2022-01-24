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
struct ceph_inode_info {int /*<<< orphan*/  i_symlink; } ;

/* Variables and functions */
 struct ceph_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  ceph_inode_cachep ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ceph_inode_info*) ; 

void FUNC3(struct inode *inode)
{
	struct ceph_inode_info *ci = FUNC0(inode);

	FUNC1(ci->i_symlink);
	FUNC2(ceph_inode_cachep, ci);
}