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
struct kiocb {int /*<<< orphan*/  ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct file {TYPE_1__* f_mapping; scalar_t__ private_data; } ;
struct cifsInodeInfo {int /*<<< orphan*/  lock_sem; } ;
struct cifsFileInfo {int /*<<< orphan*/  tlink; } ;
struct TCP_Server_Info {TYPE_3__* vals; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_8__ {TYPE_2__* ses; } ;
struct TYPE_7__ {int /*<<< orphan*/  exclusive_lock_type; } ;
struct TYPE_6__ {struct TCP_Server_Info* server; } ;
struct TYPE_5__ {struct inode* host; } ;

/* Variables and functions */
 struct cifsInodeInfo* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  CIFS_WRITE_OP ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  FUNC1 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct cifsFileInfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct kiocb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct iov_iter*) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC11(struct kiocb *iocb, struct iov_iter *from)
{
	struct file *file = iocb->ki_filp;
	struct cifsFileInfo *cfile = (struct cifsFileInfo *)file->private_data;
	struct inode *inode = file->f_mapping->host;
	struct cifsInodeInfo *cinode = FUNC0(inode);
	struct TCP_Server_Info *server = FUNC9(cfile->tlink)->ses->server;
	ssize_t rc;

	FUNC6(inode);
	/*
	 * We need to hold the sem to be sure nobody modifies lock list
	 * with a brlock that prevents writing.
	 */
	FUNC3(&cinode->lock_sem);

	rc = FUNC4(iocb, from);
	if (rc <= 0)
		goto out;

	if (!FUNC2(cfile, iocb->ki_pos, FUNC8(from),
				     server->vals->exclusive_lock_type, 0,
				     NULL, CIFS_WRITE_OP))
		rc = FUNC1(iocb, from);
	else
		rc = -EACCES;
out:
	FUNC10(&cinode->lock_sem);
	FUNC7(inode);

	if (rc > 0)
		rc = FUNC5(iocb, rc);
	return rc;
}