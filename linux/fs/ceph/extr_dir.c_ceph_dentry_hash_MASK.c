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
struct inode {int dummy; } ;
struct TYPE_4__ {int hash; int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/  d_lock; TYPE_2__ d_name; } ;
struct TYPE_3__ {int dl_dir_hash; } ;
struct ceph_inode_info {TYPE_1__ i_dir_layout; } ;

/* Variables and functions */
#define  CEPH_STR_HASH_LINUX 128 
 struct ceph_inode_info* FUNC0 (struct inode*) ; 
 unsigned int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

unsigned FUNC4(struct inode *dir, struct dentry *dn)
{
	struct ceph_inode_info *dci = FUNC0(dir);
	unsigned hash;

	switch (dci->i_dir_layout.dl_dir_hash) {
	case 0:	/* for backward compat */
	case CEPH_STR_HASH_LINUX:
		return dn->d_name.hash;

	default:
		FUNC2(&dn->d_lock);
		hash = FUNC1(dci->i_dir_layout.dl_dir_hash,
				     dn->d_name.name, dn->d_name.len);
		FUNC3(&dn->d_lock);
		return hash;
	}
}