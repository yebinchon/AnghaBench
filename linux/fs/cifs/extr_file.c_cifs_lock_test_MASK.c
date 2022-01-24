#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct file_lock {int /*<<< orphan*/  fl_type; int /*<<< orphan*/  fl_pid; scalar_t__ fl_end; scalar_t__ fl_start; int /*<<< orphan*/  fl_flags; } ;
struct cifsLockInfo {int type; int /*<<< orphan*/  pid; scalar_t__ length; scalar_t__ offset; } ;
struct cifsInodeInfo {int /*<<< orphan*/  lock_sem; int /*<<< orphan*/  can_cache_brlcks; } ;
struct cifsFileInfo {int /*<<< orphan*/  tlink; int /*<<< orphan*/  dentry; } ;
struct TCP_Server_Info {TYPE_2__* vals; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_6__ {TYPE_1__* ses; } ;
struct TYPE_5__ {int shared_lock_type; } ;
struct TYPE_4__ {struct TCP_Server_Info* server; } ;

/* Variables and functions */
 struct cifsInodeInfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CIFS_LOCK_OP ; 
 int /*<<< orphan*/  F_RDLCK ; 
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int FUNC1 (struct cifsFileInfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cifsLockInfo**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct cifsFileInfo *cfile, __u64 offset, __u64 length,
	       __u8 type, struct file_lock *flock)
{
	int rc = 0;
	struct cifsLockInfo *conf_lock;
	struct cifsInodeInfo *cinode = FUNC0(FUNC2(cfile->dentry));
	struct TCP_Server_Info *server = FUNC4(cfile->tlink)->ses->server;
	bool exist;

	FUNC3(&cinode->lock_sem);

	exist = FUNC1(cfile, offset, length, type,
					flock->fl_flags, &conf_lock,
					CIFS_LOCK_OP);
	if (exist) {
		flock->fl_start = conf_lock->offset;
		flock->fl_end = conf_lock->offset + conf_lock->length - 1;
		flock->fl_pid = conf_lock->pid;
		if (conf_lock->type & server->vals->shared_lock_type)
			flock->fl_type = F_RDLCK;
		else
			flock->fl_type = F_WRLCK;
	} else if (!cinode->can_cache_brlcks)
		rc = 1;
	else
		flock->fl_type = F_UNLCK;

	FUNC5(&cinode->lock_sem);
	return rc;
}