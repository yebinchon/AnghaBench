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
struct super_block {int dummy; } ;
struct fid {scalar_t__ raw; } ;
struct dentry {int dummy; } ;
struct ceph_nfs_snapfh {int dummy; } ;
struct ceph_nfs_confh {int /*<<< orphan*/  parent_ino; int /*<<< orphan*/  ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int FILEID_BTRFS_WITH_PARENT ; 
 int FILEID_INO32_GEN_PARENT ; 
 struct dentry* FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC2 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC3 (struct super_block*,struct ceph_nfs_snapfh*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct dentry *FUNC6(struct super_block *sb,
					struct fid *fid,
					int fh_len, int fh_type)
{
	struct ceph_nfs_confh *cfh = (void *)fid->raw;
	struct dentry *dentry;

	if (fh_type == FILEID_BTRFS_WITH_PARENT) {
		struct ceph_nfs_snapfh *sfh = (void *)fid->raw;
		return FUNC3(sb, sfh, true);
	}

	if (fh_type != FILEID_INO32_GEN_PARENT)
		return NULL;
	if (fh_len < sizeof(*cfh) / 4)
		return NULL;

	FUNC4("fh_to_parent %llx\n", cfh->parent_ino);
	dentry = FUNC2(sb, NULL, cfh->ino);
	if (FUNC5(dentry == FUNC0(-ENOENT)))
		dentry = FUNC1(sb, cfh->parent_ino);
	return dentry;
}