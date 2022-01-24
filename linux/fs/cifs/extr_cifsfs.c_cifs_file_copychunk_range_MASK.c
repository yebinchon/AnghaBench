#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_data; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifs_tcon {TYPE_3__* ses; } ;
struct cifsFileInfo {int /*<<< orphan*/  tlink; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_8__ {scalar_t__ time; } ;
struct TYPE_7__ {TYPE_2__* server; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* copychunk_range ) (unsigned int,struct cifsFileInfo*,struct cifsFileInfo*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  EXDEV ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct inode* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,struct cifsFileInfo*,struct cifsFileInfo*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 struct cifs_tcon* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct inode*) ; 

ssize_t FUNC10(unsigned int xid,
				struct file *src_file, loff_t off,
				struct file *dst_file, loff_t destoff,
				size_t len, unsigned int flags)
{
	struct inode *src_inode = FUNC3(src_file);
	struct inode *target_inode = FUNC3(dst_file);
	struct cifsFileInfo *smb_file_src;
	struct cifsFileInfo *smb_file_target;
	struct cifs_tcon *src_tcon;
	struct cifs_tcon *target_tcon;
	ssize_t rc;

	FUNC1(FYI, "copychunk range\n");

	if (!src_file->private_data || !dst_file->private_data) {
		rc = -EBADF;
		FUNC1(VFS, "missing cifsFileInfo on copy range src file\n");
		goto out;
	}

	rc = -EXDEV;
	smb_file_target = dst_file->private_data;
	smb_file_src = src_file->private_data;
	src_tcon = FUNC7(smb_file_src->tlink);
	target_tcon = FUNC7(smb_file_target->tlink);

	if (src_tcon->ses != target_tcon->ses) {
		FUNC1(VFS, "source and target of copy not on same server\n");
		goto out;
	}

	rc = -EOPNOTSUPP;
	if (!target_tcon->ses->server->ops->copychunk_range)
		goto out;

	/*
	 * Note: cifs case is easier than btrfs since server responsible for
	 * checks for proper open modes and file type and if it wants
	 * server could even support copy of range where source = target
	 */
	FUNC5(target_inode, src_inode);

	FUNC1(FYI, "about to flush pages\n");
	/* should we flush first and last page first */
	FUNC8(&target_inode->i_data, 0);

	rc = FUNC4(dst_file);
	if (!rc)
		rc = target_tcon->ses->server->ops->copychunk_range(xid,
			smb_file_src, smb_file_target, off, len, destoff);

	FUNC2(src_file);

	/* force revalidate of size and timestamps of target file now
	 * that target is updated on the server
	 */
	FUNC0(target_inode)->time = 0;
	/* although unlocking in the reverse order from locking is not
	 * strictly necessary here it is a little cleaner to be consistent
	 */
	FUNC9(src_inode, target_inode);

out:
	return rc;
}