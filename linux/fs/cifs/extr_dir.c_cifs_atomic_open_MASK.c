#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct tcon_link {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int f_flags; int /*<<< orphan*/ * f_op; int /*<<< orphan*/  f_mode; } ;
typedef  struct tcon_link dentry ;
struct cifs_tcon {TYPE_1__* ses; } ;
struct cifs_pending_open {int dummy; } ;
struct cifs_fid {int dummy; } ;
struct cifsFileInfo {int dummy; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_7__ {int mnt_cifs_flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* close ) (unsigned int,struct cifs_tcon*,struct cifs_fid*) ;int /*<<< orphan*/  (* new_lease_key ) (struct cifs_fid*) ;} ;
struct TYPE_5__ {struct TCP_Server_Info* server; } ;

/* Variables and functions */
 int CIFS_MOUNT_NO_BRL ; 
 int CIFS_MOUNT_STRICT_IO ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FMODE_CREATED ; 
 int /*<<< orphan*/  FYI ; 
 scalar_t__ FUNC1 (struct tcon_link*) ; 
 unsigned int O_CREAT ; 
 int O_DIRECT ; 
 unsigned int O_EXCL ; 
 int FUNC2 (struct tcon_link*) ; 
 int FUNC3 (struct tcon_link*,struct cifs_tcon*) ; 
 int /*<<< orphan*/  FUNC4 (struct cifs_fid*,struct tcon_link*,struct cifs_pending_open*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct inode*,struct tcon_link*,struct tcon_link*) ; 
 int /*<<< orphan*/  FUNC6 (struct cifs_pending_open*) ; 
 int FUNC7 (struct inode*,struct tcon_link*,unsigned int,struct tcon_link*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct cifs_fid*) ; 
 int /*<<< orphan*/  cifs_file_direct_nobrl_ops ; 
 int /*<<< orphan*/  cifs_file_direct_ops ; 
 struct tcon_link* FUNC8 (struct inode*,struct tcon_link*,int /*<<< orphan*/ ) ; 
 struct cifsFileInfo* FUNC9 (struct cifs_fid*,struct file*,struct tcon_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tcon_link*) ; 
 struct tcon_link* FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (struct tcon_link*) ; 
 int FUNC13 (struct file*,struct tcon_link*) ; 
 int FUNC14 (struct file*,struct tcon_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct file*) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int) ; 
 int /*<<< orphan*/  generic_file_open ; 
 unsigned int FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct cifs_fid*) ; 
 int /*<<< orphan*/  FUNC19 (unsigned int,struct cifs_tcon*,struct cifs_fid*) ; 
 int /*<<< orphan*/  FUNC20 (unsigned int,struct cifs_tcon*,struct cifs_fid*) ; 
 struct cifs_tcon* FUNC21 (struct tcon_link*) ; 

int
FUNC22(struct inode *inode, struct dentry *direntry,
		 struct file *file, unsigned oflags, umode_t mode)
{
	int rc;
	unsigned int xid;
	struct tcon_link *tlink;
	struct cifs_tcon *tcon;
	struct TCP_Server_Info *server;
	struct cifs_fid fid;
	struct cifs_pending_open open;
	__u32 oplock;
	struct cifsFileInfo *file_info;

	/*
	 * Posix open is only called (at lookup time) for file create now. For
	 * opens (rather than creates), because we do not know if it is a file
	 * or directory yet, and current Samba no longer allows us to do posix
	 * open on dirs, we could end up wasting an open call on what turns out
	 * to be a dir. For file opens, we wait to call posix open till
	 * cifs_open.  It could be added to atomic_open in the future but the
	 * performance tradeoff of the extra network request when EISDIR or
	 * EACCES is returned would have to be weighed against the 50% reduction
	 * in network traffic in the other paths.
	 */
	if (!(oflags & O_CREAT)) {
		struct dentry *res;

		/*
		 * Check for hashed negative dentry. We have already revalidated
		 * the dentry and it is fine. No need to perform another lookup.
		 */
		if (!FUNC12(direntry))
			return -ENOENT;

		res = FUNC8(inode, direntry, 0);
		if (FUNC1(res))
			return FUNC2(res);

		return FUNC13(file, res);
	}

	xid = FUNC17();

	FUNC5(FYI, "parent inode = 0x%p name is: %pd and dentry = 0x%p\n",
		 inode, direntry, direntry);

	tlink = FUNC11(FUNC0(inode->i_sb));
	if (FUNC1(tlink)) {
		rc = FUNC2(tlink);
		goto out_free_xid;
	}

	tcon = FUNC21(tlink);

	rc = FUNC3(direntry, tcon);
	if (rc)
		goto out;

	server = tcon->ses->server;

	if (server->ops->new_lease_key)
		server->ops->new_lease_key(&fid);

	FUNC4(&fid, tlink, &open);

	rc = FUNC7(inode, direntry, xid, tlink, oflags, mode,
			    &oplock, &fid);

	if (rc) {
		FUNC6(&open);
		goto out;
	}

	if ((oflags & (O_CREAT | O_EXCL)) == (O_CREAT | O_EXCL))
		file->f_mode |= FMODE_CREATED;

	rc = FUNC14(file, direntry, generic_file_open);
	if (rc) {
		if (server->ops->close)
			server->ops->close(xid, tcon, &fid);
		FUNC6(&open);
		goto out;
	}

	if (file->f_flags & O_DIRECT &&
	    FUNC0(inode->i_sb)->mnt_cifs_flags & CIFS_MOUNT_STRICT_IO) {
		if (FUNC0(inode->i_sb)->mnt_cifs_flags & CIFS_MOUNT_NO_BRL)
			file->f_op = &cifs_file_direct_nobrl_ops;
		else
			file->f_op = &cifs_file_direct_ops;
		}

	file_info = FUNC9(&fid, file, tlink, oplock);
	if (file_info == NULL) {
		if (server->ops->close)
			server->ops->close(xid, tcon, &fid);
		FUNC6(&open);
		FUNC15(file);
		rc = -ENOMEM;
	}

out:
	FUNC10(tlink);
out_free_xid:
	FUNC16(xid);
	return rc;
}