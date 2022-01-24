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
struct dentry {int /*<<< orphan*/  i_sb; } ;
struct cifs_tcon {scalar_t__ unix_ext; } ;
struct cifs_sb_info {int dummy; } ;

/* Variables and functions */
 struct cifs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct inode* FUNC1 (struct tcon_link*) ; 
 struct inode* FUNC2 (int) ; 
 int /*<<< orphan*/  FYI ; 
 scalar_t__ FUNC3 (struct tcon_link*) ; 
 char* FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,struct cifs_tcon*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (struct inode**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct inode**,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct tcon_link*) ; 
 struct tcon_link* FUNC10 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 scalar_t__ FUNC13 (struct inode*) ; 
 struct inode* FUNC14 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int) ; 
 unsigned int FUNC16 () ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 struct cifs_tcon* FUNC19 (struct tcon_link*) ; 
 scalar_t__ FUNC20 (int) ; 

struct dentry *
FUNC21(struct inode *parent_dir_inode, struct dentry *direntry,
	    unsigned int flags)
{
	unsigned int xid;
	int rc = 0; /* to get around spurious gcc warning, set to zero here */
	struct cifs_sb_info *cifs_sb;
	struct tcon_link *tlink;
	struct cifs_tcon *pTcon;
	struct inode *newInode = NULL;
	char *full_path = NULL;

	xid = FUNC16();

	FUNC6(FYI, "parent inode = 0x%p name is: %pd and dentry = 0x%p\n",
		 parent_dir_inode, direntry, direntry);

	/* check whether path exists */

	cifs_sb = FUNC0(parent_dir_inode->i_sb);
	tlink = FUNC10(cifs_sb);
	if (FUNC3(tlink)) {
		FUNC15(xid);
		return FUNC1(tlink);
	}
	pTcon = FUNC19(tlink);

	rc = FUNC5(direntry, pTcon);
	if (FUNC20(rc)) {
		FUNC9(tlink);
		FUNC15(xid);
		return FUNC2(rc);
	}

	/* can not grab the rename sem here since it would
	deadlock in the cases (beginning of sys_rename itself)
	in which we already have the sb rename sem */
	full_path = FUNC4(direntry);
	if (full_path == NULL) {
		FUNC9(tlink);
		FUNC15(xid);
		return FUNC2(-ENOMEM);
	}

	if (FUNC13(direntry)) {
		FUNC6(FYI, "non-NULL inode in lookup\n");
	} else {
		FUNC6(FYI, "NULL inode in lookup\n");
	}
	FUNC6(FYI, "Full path: %s inode = 0x%p\n",
		 full_path, FUNC12(direntry));

	if (pTcon->unix_ext) {
		rc = FUNC8(&newInode, full_path,
					      parent_dir_inode->i_sb, xid);
	} else {
		rc = FUNC7(&newInode, full_path, NULL,
				parent_dir_inode->i_sb, xid, NULL);
	}

	if (rc == 0) {
		/* since paths are not looked up by component - the parent
		   directories are presumed to be good here */
		FUNC18(direntry);
	} else if (rc == -ENOENT) {
		FUNC11(direntry, jiffies);
		newInode = NULL;
	} else {
		if (rc != -EACCES) {
			FUNC6(FYI, "Unexpected lookup error %d\n", rc);
			/* We special case check for Access Denied - since that
			is a common return code */
		}
		newInode = FUNC2(rc);
	}
	FUNC17(full_path);
	FUNC9(tlink);
	FUNC15(xid);
	return FUNC14(newInode, direntry);
}