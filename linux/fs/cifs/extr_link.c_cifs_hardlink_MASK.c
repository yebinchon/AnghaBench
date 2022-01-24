#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tcon_link {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct cifs_tcon {TYPE_1__* ses; scalar_t__ unix_ext; } ;
struct cifs_sb_info {int /*<<< orphan*/  local_nls; } ;
struct cifsInodeInfo {scalar_t__ time; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_lock; } ;
struct TYPE_7__ {int (* create_hardlink ) (unsigned int,struct cifs_tcon*,char*,char*,struct cifs_sb_info*) ;} ;
struct TYPE_6__ {struct TCP_Server_Info* server; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,struct cifs_tcon*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cifsInodeInfo* FUNC1 (TYPE_3__*) ; 
 struct cifs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC3 (struct tcon_link*) ; 
 int FUNC4 (struct tcon_link*) ; 
 char* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcon_link*) ; 
 int /*<<< orphan*/  FUNC7 (struct cifs_sb_info*) ; 
 struct tcon_link* FUNC8 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 TYPE_3__* FUNC10 (struct dentry*) ; 
 scalar_t__ FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 unsigned int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (unsigned int,struct cifs_tcon*,char*,char*,struct cifs_sb_info*) ; 
 struct cifs_tcon* FUNC19 (struct tcon_link*) ; 

int
FUNC20(struct dentry *old_file, struct inode *inode,
	      struct dentry *direntry)
{
	int rc = -EACCES;
	unsigned int xid;
	char *from_name = NULL;
	char *to_name = NULL;
	struct cifs_sb_info *cifs_sb = FUNC2(inode->i_sb);
	struct tcon_link *tlink;
	struct cifs_tcon *tcon;
	struct TCP_Server_Info *server;
	struct cifsInodeInfo *cifsInode;

	tlink = FUNC8(cifs_sb);
	if (FUNC3(tlink))
		return FUNC4(tlink);
	tcon = FUNC19(tlink);

	xid = FUNC13();

	from_name = FUNC5(old_file);
	to_name = FUNC5(direntry);
	if ((from_name == NULL) || (to_name == NULL)) {
		rc = -ENOMEM;
		goto cifs_hl_exit;
	}

	if (tcon->unix_ext)
		rc = FUNC0(xid, tcon, from_name, to_name,
					    cifs_sb->local_nls,
					    FUNC7(cifs_sb));
	else {
		server = tcon->ses->server;
		if (!server->ops->create_hardlink) {
			rc = -ENOSYS;
			goto cifs_hl_exit;
		}
		rc = server->ops->create_hardlink(xid, tcon, from_name, to_name,
						  cifs_sb);
		if ((rc == -EIO) || (rc == -EINVAL))
			rc = -EOPNOTSUPP;
	}

	FUNC9(direntry);	/* force new lookup from server of target */

	/*
	 * if source file is cached (oplocked) revalidate will not go to server
	 * until the file is closed or oplock broken so update nlinks locally
	 */
	if (FUNC11(old_file)) {
		cifsInode = FUNC1(FUNC10(old_file));
		if (rc == 0) {
			FUNC16(&FUNC10(old_file)->i_lock);
			FUNC14(FUNC10(old_file));
			FUNC17(&FUNC10(old_file)->i_lock);

			/*
			 * parent dir timestamps will update from srv within a
			 * second, would it really be worth it to set the parent
			 * dir cifs inode time to zero to force revalidate
			 * (faster) for it too?
			 */
		}
		/*
		 * if not oplocked will force revalidate to get info on source
		 * file from srv.  Note Samba server prior to 4.2 has bug -
		 * not updating src file ctime on hardlinks but Windows servers
		 * handle it properly
		 */
		cifsInode->time = 0;

		/*
		 * Will update parent dir timestamps from srv within a second.
		 * Would it really be worth it to set the parent dir (cifs
		 * inode) time field to zero to force revalidate on parent
		 * directory faster ie
		 *
		 * CIFS_I(inode)->time = 0;
		 */
	}

cifs_hl_exit:
	FUNC15(from_name);
	FUNC15(to_name);
	FUNC12(xid);
	FUNC6(tlink);
	return rc;
}