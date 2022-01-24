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
struct tcon_link {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct cifs_tcon {scalar_t__ unix_ext; } ;
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  local_nls; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,struct cifs_tcon*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CIFS_MOUNT_MF_SYMLINKS ; 
 struct cifs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FYI ; 
 scalar_t__ FUNC2 (struct tcon_link*) ; 
 int FUNC3 (struct tcon_link*) ; 
 char* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (struct inode**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct inode**,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct tcon_link*) ; 
 int /*<<< orphan*/  FUNC9 (struct cifs_sb_info*) ; 
 struct tcon_link* FUNC10 (struct cifs_sb_info*) ; 
 int FUNC11 (unsigned int,struct cifs_tcon*,struct cifs_sb_info*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 unsigned int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 struct cifs_tcon* FUNC16 (struct tcon_link*) ; 

int
FUNC17(struct inode *inode, struct dentry *direntry, const char *symname)
{
	int rc = -EOPNOTSUPP;
	unsigned int xid;
	struct cifs_sb_info *cifs_sb = FUNC1(inode->i_sb);
	struct tcon_link *tlink;
	struct cifs_tcon *pTcon;
	char *full_path = NULL;
	struct inode *newinode = NULL;

	xid = FUNC14();

	tlink = FUNC10(cifs_sb);
	if (FUNC2(tlink)) {
		rc = FUNC3(tlink);
		goto symlink_exit;
	}
	pTcon = FUNC16(tlink);

	full_path = FUNC4(direntry);
	if (full_path == NULL) {
		rc = -ENOMEM;
		goto symlink_exit;
	}

	FUNC5(FYI, "Full path: %s\n", full_path);
	FUNC5(FYI, "symname is %s\n", symname);

	/* BB what if DFS and this volume is on different share? BB */
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MF_SYMLINKS)
		rc = FUNC11(xid, pTcon, cifs_sb, full_path, symname);
	else if (pTcon->unix_ext)
		rc = FUNC0(xid, pTcon, full_path, symname,
					   cifs_sb->local_nls,
					   FUNC9(cifs_sb));
	/* else
	   rc = CIFSCreateReparseSymLink(xid, pTcon, fromName, toName,
					cifs_sb_target->local_nls); */

	if (rc == 0) {
		if (pTcon->unix_ext)
			rc = FUNC7(&newinode, full_path,
						      inode->i_sb, xid);
		else
			rc = FUNC6(&newinode, full_path, NULL,
						 inode->i_sb, xid, NULL);

		if (rc != 0) {
			FUNC5(FYI, "Create symlink ok, getinodeinfo fail rc = %d\n",
				 rc);
		} else {
			FUNC12(direntry, newinode);
		}
	}
symlink_exit:
	FUNC15(full_path);
	FUNC8(tlink);
	FUNC13(xid);
	return rc;
}