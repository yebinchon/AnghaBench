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
struct super_block {int /*<<< orphan*/  s_root; } ;
struct smb_vol {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;

/* Variables and functions */
 char FUNC0 (struct cifs_sb_info*) ; 
 int CIFS_MOUNT_USE_PREFIX_PATH ; 
 struct cifs_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOTDIR ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (struct smb_vol*,struct cifs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct cifs_sb_info*) ; 
 struct inode* FUNC8 (struct dentry*) ; 
 struct dentry* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 struct dentry* FUNC12 (char*,struct dentry*,int) ; 

__attribute__((used)) static struct dentry *
FUNC13(struct smb_vol *vol, struct super_block *sb)
{
	struct dentry *dentry;
	struct cifs_sb_info *cifs_sb = FUNC1(sb);
	char *full_path = NULL;
	char *s, *p;
	char sep;

	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_USE_PREFIX_PATH)
		return FUNC9(sb->s_root);

	full_path = FUNC5(vol, cifs_sb,
				FUNC7(cifs_sb), 0);
	if (full_path == NULL)
		return FUNC2(-ENOMEM);

	FUNC6(FYI, "Get root dentry for %s\n", full_path);

	sep = FUNC0(cifs_sb);
	dentry = FUNC9(sb->s_root);
	p = s = full_path;

	do {
		struct inode *dir = FUNC8(dentry);
		struct dentry *child;

		if (!dir) {
			FUNC10(dentry);
			dentry = FUNC2(-ENOENT);
			break;
		}
		if (!FUNC4(dir->i_mode)) {
			FUNC10(dentry);
			dentry = FUNC2(-ENOTDIR);
			break;
		}

		/* skip separators */
		while (*s == sep)
			s++;
		if (!*s)
			break;
		p = s++;
		/* next separator */
		while (*s && *s != sep)
			s++;

		child = FUNC12(p, dentry, s - p);
		FUNC10(dentry);
		dentry = child;
	} while (!FUNC3(dentry));
	FUNC11(full_path);
	return dentry;
}