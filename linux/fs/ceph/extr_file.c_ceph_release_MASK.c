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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct file {struct ceph_file_info* private_data; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_cap_wq; } ;
struct TYPE_2__ {int /*<<< orphan*/  fmode; int /*<<< orphan*/  rw_contexts; } ;
struct ceph_file_info {int /*<<< orphan*/  fmode; int /*<<< orphan*/  rw_contexts; int /*<<< orphan*/  dir_info; int /*<<< orphan*/  last_name; scalar_t__ last_readdir; TYPE_1__ file_info; } ;
struct ceph_dir_file_info {int /*<<< orphan*/  fmode; int /*<<< orphan*/  rw_contexts; int /*<<< orphan*/  dir_info; int /*<<< orphan*/  last_name; scalar_t__ last_readdir; TYPE_1__ file_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ceph_dir_file_cachep ; 
 int /*<<< orphan*/  ceph_file_cachep ; 
 struct ceph_inode_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_inode_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ceph_file_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct inode *inode, struct file *file)
{
	struct ceph_inode_info *ci = FUNC2(inode);

	if (FUNC0(inode->i_mode)) {
		struct ceph_dir_file_info *dfi = file->private_data;
		FUNC5("release inode %p dir file %p\n", inode, file);
		FUNC1(!FUNC8(&dfi->file_info.rw_contexts));

		FUNC4(ci, dfi->file_info.fmode);

		if (dfi->last_readdir)
			FUNC3(dfi->last_readdir);
		FUNC6(dfi->last_name);
		FUNC6(dfi->dir_info);
		FUNC7(ceph_dir_file_cachep, dfi);
	} else {
		struct ceph_file_info *fi = file->private_data;
		FUNC5("release inode %p regular file %p\n", inode, file);
		FUNC1(!FUNC8(&fi->rw_contexts));

		FUNC4(ci, fi->fmode);
		FUNC7(ceph_file_cachep, fi);
	}

	/* wake up anyone waiting for caps on this inode */
	FUNC9(&ci->i_cap_wq);
	return 0;
}