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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int dummy; } ;
struct inode {int i_state; scalar_t__ i_ino; } ;
struct ceph_vino {int /*<<< orphan*/  snap; int /*<<< orphan*/  ino; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int I_NEW ; 
 int /*<<< orphan*/  ceph_ino_compare ; 
 int /*<<< orphan*/  ceph_set_ino_cb ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_vino) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 struct inode* FUNC4 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ceph_vino*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

struct inode *FUNC6(struct super_block *sb, struct ceph_vino vino)
{
	struct inode *inode;
	ino_t t = FUNC1(vino);

	inode = FUNC4(sb, t, ceph_ino_compare, ceph_set_ino_cb, &vino);
	if (!inode)
		return FUNC0(-ENOMEM);
	if (inode->i_state & I_NEW) {
		FUNC3("get_inode created new inode %p %llx.%llx ino %llx\n",
		     inode, FUNC2(inode), (u64)inode->i_ino);
		FUNC5(inode);
	}

	FUNC3("get_inode on %lu=%llx.%llx got %p\n", inode->i_ino, vino.ino,
	     vino.snap, inode);
	return inode;
}