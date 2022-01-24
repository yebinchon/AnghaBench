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
struct super_block {int /*<<< orphan*/  local_nls; int /*<<< orphan*/  s_flags; scalar_t__ s_root; } ;
struct smb_vol {int /*<<< orphan*/  local_nls; int /*<<< orphan*/  s_flags; scalar_t__ s_root; } ;
struct file_system_type {int dummy; } ;
struct dentry {int /*<<< orphan*/  local_nls; int /*<<< orphan*/  s_flags; scalar_t__ s_root; } ;
struct cifs_sb_info {struct cifs_sb_info* mountdata; struct cifs_sb_info* prepath; } ;
struct cifs_mnt_data {int flags; struct cifs_sb_info* cifs_sb; struct super_block* vol; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct super_block* FUNC0 (struct super_block*) ; 
 struct super_block* FUNC1 (int) ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SB_ACTIVE ; 
 int SB_NOATIME ; 
 int SB_NODIRATIME ; 
 int SB_SILENT ; 
 int /*<<< orphan*/  VFS ; 
 scalar_t__ cifsFYI ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 struct super_block* FUNC5 (struct super_block*,struct super_block*) ; 
 struct super_block* FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  cifs_match_super ; 
 int FUNC8 (struct cifs_sb_info*,struct super_block*) ; 
 int FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  cifs_set_super ; 
 int FUNC10 (struct super_block*,struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC13 (struct cifs_sb_info*) ; 
 struct cifs_sb_info* FUNC14 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cifs_sb_info* FUNC15 (int,int /*<<< orphan*/ ) ; 
 struct super_block* FUNC16 (struct file_system_type*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct cifs_mnt_data*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *
FUNC18(struct file_system_type *fs_type,
	      int flags, const char *dev_name, void *data, bool is_smb3)
{
	int rc;
	struct super_block *sb;
	struct cifs_sb_info *cifs_sb;
	struct smb_vol *volume_info;
	struct cifs_mnt_data mnt_data;
	struct dentry *root;

	/*
	 * Prints in Kernel / CIFS log the attempted mount operation
	 *	If CIFS_DEBUG && cifs_FYI
	 */
	if (cifsFYI)
		FUNC4(FYI, "Devname: %s flags: %d\n", dev_name, flags);
	else
		FUNC7("Attempting to mount %s\n", dev_name);

	volume_info = FUNC6((char *)data, dev_name, is_smb3);
	if (FUNC2(volume_info))
		return FUNC0(volume_info);

	cifs_sb = FUNC15(sizeof(struct cifs_sb_info), GFP_KERNEL);
	if (cifs_sb == NULL) {
		root = FUNC1(-ENOMEM);
		goto out_nls;
	}

	cifs_sb->mountdata = FUNC14(data, PAGE_SIZE, GFP_KERNEL);
	if (cifs_sb->mountdata == NULL) {
		root = FUNC1(-ENOMEM);
		goto out_free;
	}

	rc = FUNC10(volume_info, cifs_sb);
	if (rc) {
		root = FUNC1(rc);
		goto out_free;
	}

	rc = FUNC8(cifs_sb, volume_info);
	if (rc) {
		if (!(flags & SB_SILENT))
			FUNC4(VFS, "cifs_mount failed w/return code = %d\n",
				 rc);
		root = FUNC1(rc);
		goto out_free;
	}

	mnt_data.vol = volume_info;
	mnt_data.cifs_sb = cifs_sb;
	mnt_data.flags = flags;

	/* BB should we make this contingent on mount parm? */
	flags |= SB_NODIRATIME | SB_NOATIME;

	sb = FUNC16(fs_type, cifs_match_super, cifs_set_super, flags, &mnt_data);
	if (FUNC2(sb)) {
		root = FUNC0(sb);
		FUNC11(cifs_sb);
		goto out;
	}

	if (sb->s_root) {
		FUNC4(FYI, "Use existing superblock\n");
		FUNC11(cifs_sb);
	} else {
		rc = FUNC9(sb);
		if (rc) {
			root = FUNC1(rc);
			goto out_super;
		}

		sb->s_flags |= SB_ACTIVE;
	}

	root = FUNC5(volume_info, sb);
	if (FUNC2(root))
		goto out_super;

	FUNC4(FYI, "dentry root is: %p\n", root);
	goto out;

out_super:
	FUNC12(sb);
out:
	FUNC3(volume_info);
	return root;

out_free:
	FUNC13(cifs_sb->prepath);
	FUNC13(cifs_sb->mountdata);
	FUNC13(cifs_sb);
out_nls:
	FUNC17(volume_info->local_nls);
	goto out;
}