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
struct super_block {int /*<<< orphan*/  mdsc; int /*<<< orphan*/  client; } ;
struct file_system_type {int dummy; } ;
struct dentry {int /*<<< orphan*/  mdsc; int /*<<< orphan*/  client; } ;
struct ceph_options {int dummy; } ;
struct ceph_mount_options {int dummy; } ;
struct ceph_fs_client {int /*<<< orphan*/  mdsc; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 struct super_block* FUNC0 (struct super_block*) ; 
 struct super_block* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  NOSHARE ; 
 struct super_block* FUNC3 (struct super_block*) ; 
 int SB_POSIXACL ; 
 int FUNC4 (struct super_block*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct super_block*) ; 
 struct super_block* FUNC7 (struct super_block*) ; 
 struct super_block* FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  ceph_set_super ; 
 int FUNC9 (struct super_block*,struct super_block*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct super_block* FUNC12 (struct ceph_mount_options*,struct ceph_options*) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int FUNC17 (struct ceph_mount_options**,struct ceph_options**,int,void*,char const*) ; 
 struct super_block* FUNC18 (struct file_system_type*,int (*) (struct super_block*,void*),int /*<<< orphan*/ ,int,struct super_block*) ; 

__attribute__((used)) static struct dentry *FUNC19(struct file_system_type *fs_type,
		       int flags, const char *dev_name, void *data)
{
	struct super_block *sb;
	struct ceph_fs_client *fsc;
	struct dentry *res;
	int err;
	int (*compare_super)(struct super_block *, void *) = ceph_compare_super;
	struct ceph_mount_options *fsopt = NULL;
	struct ceph_options *opt = NULL;

	FUNC16("ceph_mount\n");

#ifdef CONFIG_CEPH_FS_POSIX_ACL
	flags |= SB_POSIXACL;
#endif
	err = FUNC17(&fsopt, &opt, flags, data, dev_name);
	if (err < 0) {
		res = FUNC1(err);
		goto out_final;
	}

	/* create client (which we may/may not use) */
	fsc = FUNC12(fsopt, opt);
	if (FUNC2(fsc)) {
		res = FUNC0(fsc);
		goto out_final;
	}

	err = FUNC6(fsc);
	if (err < 0) {
		res = FUNC1(err);
		goto out;
	}

	if (FUNC10(fsc->client, NOSHARE))
		compare_super = NULL;
	sb = FUNC18(fs_type, compare_super, ceph_set_super, flags, fsc);
	if (FUNC2(sb)) {
		res = FUNC0(sb);
		goto out;
	}

	if (FUNC8(sb) != fsc) {
		FUNC15(fsc);
		fsc = FUNC8(sb);
		FUNC16("get_sb got existing client %p\n", fsc);
	} else {
		FUNC16("get_sb using new client %p\n", fsc);
		err = FUNC9(sb, fsc);
		if (err < 0) {
			res = FUNC1(err);
			goto out_splat;
		}
	}

	res = FUNC7(fsc);
	if (FUNC2(res))
		goto out_splat;
	FUNC16("root %p inode %p ino %llx.%llx\n", res,
	     FUNC13(res), FUNC11(FUNC13(res)));
	return res;

out_splat:
	FUNC5(fsc->mdsc);
	FUNC14(sb);
	goto out_final;

out:
	FUNC15(fsc);
out_final:
	FUNC16("ceph_mount fail %ld\n", FUNC3(res));
	return res;
}