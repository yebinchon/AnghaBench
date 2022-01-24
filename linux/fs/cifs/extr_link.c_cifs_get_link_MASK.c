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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
struct cifs_tcon {TYPE_1__* ses; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifsInodeInfo {int cifsAttrs; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
struct TYPE_4__ {int (* query_symlink ) (unsigned int,struct cifs_tcon*,struct cifs_sb_info*,char*,char**,int) ;} ;
struct TYPE_3__ {struct TCP_Server_Info* server; } ;

/* Variables and functions */
 int ATTR_REPARSE ; 
 struct cifsInodeInfo* FUNC0 (struct inode*) ; 
 int CIFS_MOUNT_MF_SYMLINKS ; 
 struct cifs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int ECHILD ; 
 int ENOMEM ; 
 char const* FUNC2 (struct tcon_link*) ; 
 char const* FUNC3 (int) ; 
 int /*<<< orphan*/  FYI ; 
 scalar_t__ FUNC4 (struct tcon_link*) ; 
 char* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct tcon_link*) ; 
 struct tcon_link* FUNC8 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 unsigned int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  kfree_link ; 
 int FUNC12 (unsigned int,struct cifs_tcon*,struct cifs_sb_info*,char*,char**) ; 
 int /*<<< orphan*/  FUNC13 (struct delayed_call*,int /*<<< orphan*/ ,char*) ; 
 int FUNC14 (unsigned int,struct cifs_tcon*,struct cifs_sb_info*,char*,char**,int) ; 
 struct cifs_tcon* FUNC15 (struct tcon_link*) ; 

const char *
FUNC16(struct dentry *direntry, struct inode *inode,
	      struct delayed_call *done)
{
	int rc = -ENOMEM;
	unsigned int xid;
	char *full_path = NULL;
	char *target_path = NULL;
	struct cifs_sb_info *cifs_sb = FUNC1(inode->i_sb);
	struct tcon_link *tlink = NULL;
	struct cifs_tcon *tcon;
	struct TCP_Server_Info *server;

	if (!direntry)
		return FUNC3(-ECHILD);

	xid = FUNC10();

	tlink = FUNC8(cifs_sb);
	if (FUNC4(tlink)) {
		FUNC9(xid);
		return FUNC2(tlink);
	}
	tcon = FUNC15(tlink);
	server = tcon->ses->server;

	full_path = FUNC5(direntry);
	if (!full_path) {
		FUNC9(xid);
		FUNC7(tlink);
		return FUNC3(-ENOMEM);
	}

	FUNC6(FYI, "Full path: %s inode = 0x%p\n", full_path, inode);

	rc = -EACCES;
	/*
	 * First try Minshall+French Symlinks, if configured
	 * and fallback to UNIX Extensions Symlinks.
	 */
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MF_SYMLINKS)
		rc = FUNC12(xid, tcon, cifs_sb, full_path,
				      &target_path);

	if (rc != 0 && server->ops->query_symlink) {
		struct cifsInodeInfo *cifsi = FUNC0(inode);
		bool reparse_point = false;

		if (cifsi->cifsAttrs & ATTR_REPARSE)
			reparse_point = true;

		rc = server->ops->query_symlink(xid, tcon, cifs_sb, full_path,
						&target_path, reparse_point);
	}

	FUNC11(full_path);
	FUNC9(xid);
	FUNC7(tlink);
	if (rc != 0) {
		FUNC11(target_path);
		return FUNC3(rc);
	}
	FUNC13(done, kfree_link, target_path);
	return target_path;
}