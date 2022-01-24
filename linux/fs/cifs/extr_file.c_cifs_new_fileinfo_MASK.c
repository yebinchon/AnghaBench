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
struct tcon_link {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int f_mode; struct cifsFileInfo* private_data; int /*<<< orphan*/  f_flags; } ;
struct dentry {int dummy; } ;
struct cifs_tcon {int /*<<< orphan*/  open_file_lock; int /*<<< orphan*/  num_local_opens; int /*<<< orphan*/  openFileList; TYPE_1__* ses; } ;
struct cifs_fid_locks {int /*<<< orphan*/  llist; struct cifsFileInfo* cfile; int /*<<< orphan*/  locks; } ;
struct cifs_fid {int purge_cache; TYPE_2__* pending_open; } ;
struct cifsInodeInfo {int /*<<< orphan*/  open_file_lock; int /*<<< orphan*/  openFileList; int /*<<< orphan*/  lock_sem; int /*<<< orphan*/  llist; } ;
struct cifsFileInfo {int count; int invalidHandle; int /*<<< orphan*/  flist; int /*<<< orphan*/  tlist; int /*<<< orphan*/  file_info_lock; int /*<<< orphan*/  fh_mutex; int /*<<< orphan*/  oplock_break; int /*<<< orphan*/  tlink; int /*<<< orphan*/  f_flags; int /*<<< orphan*/  dentry; int /*<<< orphan*/  uid; int /*<<< orphan*/  pid; struct cifs_fid_locks* llist; } ;
struct TCP_Server_Info {TYPE_3__* ops; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_8__ {int /*<<< orphan*/  tgid; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* set_fid ) (struct cifsFileInfo*,struct cifs_fid*,scalar_t__) ;scalar_t__ (* is_read_op ) (scalar_t__) ;} ;
struct TYPE_6__ {scalar_t__ oplock; int /*<<< orphan*/  olist; } ;
struct TYPE_5__ {struct TCP_Server_Info* server; } ;

/* Variables and functions */
 struct cifsInodeInfo* FUNC0 (struct inode*) ; 
 scalar_t__ CIFS_OPLOCK_NO_CHANGE ; 
 int FMODE_READ ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tcon_link*) ; 
 scalar_t__ FUNC7 (struct cifsInodeInfo*) ; 
 int /*<<< orphan*/  cifs_oplock_break ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC10 () ; 
 struct inode* FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*) ; 
 struct dentry* FUNC13 (struct file*) ; 
 int /*<<< orphan*/  FUNC14 (struct cifsFileInfo*) ; 
 void* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (struct cifsFileInfo*,struct cifs_fid*,scalar_t__) ; 
 struct cifs_tcon* FUNC25 (struct tcon_link*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

struct cifsFileInfo *
FUNC27(struct cifs_fid *fid, struct file *file,
		  struct tcon_link *tlink, __u32 oplock)
{
	struct dentry *dentry = FUNC13(file);
	struct inode *inode = FUNC11(dentry);
	struct cifsInodeInfo *cinode = FUNC0(inode);
	struct cifsFileInfo *cfile;
	struct cifs_fid_locks *fdlocks;
	struct cifs_tcon *tcon = FUNC25(tlink);
	struct TCP_Server_Info *server = tcon->ses->server;

	cfile = FUNC15(sizeof(struct cifsFileInfo), GFP_KERNEL);
	if (cfile == NULL)
		return cfile;

	fdlocks = FUNC15(sizeof(struct cifs_fid_locks), GFP_KERNEL);
	if (!fdlocks) {
		FUNC14(cfile);
		return NULL;
	}

	FUNC1(&fdlocks->locks);
	fdlocks->cfile = cfile;
	cfile->llist = fdlocks;
	FUNC5(&cinode->lock_sem);
	FUNC16(&fdlocks->llist, &cinode->llist);
	FUNC26(&cinode->lock_sem);

	cfile->count = 1;
	cfile->pid = current->tgid;
	cfile->uid = FUNC10();
	cfile->dentry = FUNC12(dentry);
	cfile->f_flags = file->f_flags;
	cfile->invalidHandle = false;
	cfile->tlink = FUNC6(tlink);
	FUNC2(&cfile->oplock_break, cifs_oplock_break);
	FUNC19(&cfile->fh_mutex);
	FUNC21(&cfile->file_info_lock);

	FUNC8(inode->i_sb);

	/*
	 * If the server returned a read oplock and we have mandatory brlocks,
	 * set oplock level to None.
	 */
	if (server->ops->is_read_op(oplock) && FUNC7(cinode)) {
		FUNC4(FYI, "Reset oplock val from read to None due to mand locks\n");
		oplock = 0;
	}

	FUNC20(&tcon->open_file_lock);
	if (fid->pending_open->oplock != CIFS_OPLOCK_NO_CHANGE && oplock)
		oplock = fid->pending_open->oplock;
	FUNC18(&fid->pending_open->olist);

	fid->purge_cache = false;
	server->ops->set_fid(cfile, fid, oplock);

	FUNC16(&cfile->tlist, &tcon->openFileList);
	FUNC3(&tcon->num_local_opens);

	/* if readable file instance put first in list*/
	FUNC20(&cinode->open_file_lock);
	if (file->f_mode & FMODE_READ)
		FUNC16(&cfile->flist, &cinode->openFileList);
	else
		FUNC17(&cfile->flist, &cinode->openFileList);
	FUNC22(&cinode->open_file_lock);
	FUNC22(&tcon->open_file_lock);

	if (fid->purge_cache)
		FUNC9(inode);

	file->private_data = cfile;
	return cfile;
}