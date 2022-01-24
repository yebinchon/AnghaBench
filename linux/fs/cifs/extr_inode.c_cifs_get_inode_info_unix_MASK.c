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
struct tcon_link {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {int i_mode; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  local_nls; } ;
struct cifs_fattr {scalar_t__ cf_uniqueid; int cf_mode; } ;
struct TYPE_2__ {scalar_t__ uniqueid; scalar_t__ time; } ;
typedef  int /*<<< orphan*/  FILE_UNIX_BASIC_INFO ;

/* Variables and functions */
 int FUNC0 (unsigned int,struct cifs_tcon*,unsigned char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int CIFS_MOUNT_MF_SYMLINKS ; 
 int CIFS_MOUNT_SERVER_INUM ; 
 struct cifs_sb_info* FUNC2 (struct super_block*) ; 
 int ENOMEM ; 
 int EREMOTE ; 
 int ESTALE ; 
 int /*<<< orphan*/  FYI ; 
 scalar_t__ FUNC3 (struct tcon_link*) ; 
 int FUNC4 (struct tcon_link*) ; 
 int S_IFMT ; 
 int FUNC5 (unsigned int,struct cifs_tcon*,struct cifs_sb_info*,struct cifs_fattr*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct cifs_fattr*,struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct cifs_fattr*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,struct cifs_fattr*) ; 
 struct inode* FUNC10 (struct super_block*,struct cifs_fattr*) ; 
 int /*<<< orphan*/  FUNC11 (struct tcon_link*) ; 
 int /*<<< orphan*/  FUNC12 (struct cifs_sb_info*) ; 
 struct tcon_link* FUNC13 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct cifs_fattr*,int /*<<< orphan*/ *,struct cifs_sb_info*) ; 
 struct cifs_tcon* FUNC15 (struct tcon_link*) ; 
 scalar_t__ FUNC16 (int) ; 

int FUNC17(struct inode **pinode,
			     const unsigned char *full_path,
			     struct super_block *sb, unsigned int xid)
{
	int rc;
	FILE_UNIX_BASIC_INFO find_data;
	struct cifs_fattr fattr;
	struct cifs_tcon *tcon;
	struct tcon_link *tlink;
	struct cifs_sb_info *cifs_sb = FUNC2(sb);

	FUNC7(FYI, "Getting info on %s\n", full_path);

	tlink = FUNC13(cifs_sb);
	if (FUNC3(tlink))
		return FUNC4(tlink);
	tcon = FUNC15(tlink);

	/* could have done a find first instead but this returns more info */
	rc = FUNC0(xid, tcon, full_path, &find_data,
				  cifs_sb->local_nls, FUNC12(cifs_sb));
	FUNC11(tlink);

	if (!rc) {
		FUNC14(&fattr, &find_data, cifs_sb);
	} else if (rc == -EREMOTE) {
		FUNC6(&fattr, sb);
		rc = 0;
	} else {
		return rc;
	}

	/* check for Minshall+French symlinks */
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MF_SYMLINKS) {
		int tmprc = FUNC5(xid, tcon, cifs_sb, &fattr,
					     full_path);
		if (tmprc)
			FUNC7(FYI, "check_mf_symlink: %d\n", tmprc);
	}

	if (*pinode == NULL) {
		/* get new inode */
		FUNC9(sb, &fattr);
		*pinode = FUNC10(sb, &fattr);
		if (!*pinode)
			rc = -ENOMEM;
	} else {
		/* we already have inode, update it */

		/* if uniqueid is different, return error */
		if (FUNC16(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SERVER_INUM &&
		    FUNC1(*pinode)->uniqueid != fattr.cf_uniqueid)) {
			FUNC1(*pinode)->time = 0; /* force reval */
			rc = -ESTALE;
			goto cgiiu_exit;
		}

		/* if filetype is different, return error */
		if (FUNC16(((*pinode)->i_mode & S_IFMT) !=
		    (fattr.cf_mode & S_IFMT))) {
			FUNC1(*pinode)->time = 0; /* force reval */
			rc = -ESTALE;
			goto cgiiu_exit;
		}

		FUNC8(*pinode, &fattr);
	}

cgiiu_exit:
	return rc;
}