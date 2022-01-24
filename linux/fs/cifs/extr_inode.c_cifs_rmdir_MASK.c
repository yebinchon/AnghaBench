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
struct tcon_link {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct cifs_tcon {TYPE_1__* ses; } ;
struct cifs_sb_info {int dummy; } ;
struct cifsInodeInfo {scalar_t__ time; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
struct TYPE_4__ {int (* rmdir ) (unsigned int,struct cifs_tcon*,char*,struct cifs_sb_info*) ;} ;
struct TYPE_3__ {struct TCP_Server_Info* server; } ;

/* Variables and functions */
 struct cifsInodeInfo* FUNC0 (struct inode*) ; 
 struct cifs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FYI ; 
 scalar_t__ FUNC2 (struct tcon_link*) ; 
 int FUNC3 (struct tcon_link*) ; 
 char* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcon_link*) ; 
 struct tcon_link* FUNC7 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 struct inode* FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 unsigned int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (unsigned int,struct cifs_tcon*,char*,struct cifs_sb_info*) ; 
 struct cifs_tcon* FUNC18 (struct tcon_link*) ; 

int FUNC19(struct inode *inode, struct dentry *direntry)
{
	int rc = 0;
	unsigned int xid;
	struct cifs_sb_info *cifs_sb;
	struct tcon_link *tlink;
	struct cifs_tcon *tcon;
	struct TCP_Server_Info *server;
	char *full_path = NULL;
	struct cifsInodeInfo *cifsInode;

	FUNC5(FYI, "cifs_rmdir, inode = 0x%p\n", inode);

	xid = FUNC12();

	full_path = FUNC4(direntry);
	if (full_path == NULL) {
		rc = -ENOMEM;
		goto rmdir_exit;
	}

	cifs_sb = FUNC1(inode->i_sb);
	tlink = FUNC7(cifs_sb);
	if (FUNC2(tlink)) {
		rc = FUNC3(tlink);
		goto rmdir_exit;
	}
	tcon = FUNC18(tlink);
	server = tcon->ses->server;

	if (!server->ops->rmdir) {
		rc = -ENOSYS;
		FUNC6(tlink);
		goto rmdir_exit;
	}

	rc = server->ops->rmdir(xid, tcon, full_path, cifs_sb);
	FUNC6(tlink);

	if (!rc) {
		FUNC15(&FUNC10(direntry)->i_lock);
		FUNC13(FUNC10(direntry), 0);
		FUNC8(FUNC10(direntry));
		FUNC16(&FUNC10(direntry)->i_lock);
	}

	cifsInode = FUNC0(FUNC10(direntry));
	/* force revalidate to go get info when needed */
	cifsInode->time = 0;

	cifsInode = FUNC0(inode);
	/*
	 * Force revalidate to get parent dir info when needed since cached
	 * attributes are invalid now.
	 */
	cifsInode->time = 0;

	FUNC10(direntry)->i_ctime = inode->i_ctime = inode->i_mtime =
		FUNC9(inode);

rmdir_exit:
	FUNC14(full_path);
	FUNC11(xid);
	return rc;
}