#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  Capability; } ;
struct cifs_tcon {TYPE_5__* ses; TYPE_1__ fsUnixInfo; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifsInodeInfo {int /*<<< orphan*/  lock_sem; scalar_t__ can_cache_brlcks; } ;
struct cifsFileInfo {int /*<<< orphan*/  tlink; TYPE_4__* dentry; } ;
struct TYPE_10__ {TYPE_3__* server; } ;
struct TYPE_9__ {int /*<<< orphan*/  d_sb; } ;
struct TYPE_8__ {TYPE_2__* ops; } ;
struct TYPE_7__ {int (* push_mand_locks ) (struct cifsFileInfo*) ;} ;

/* Variables and functions */
 struct cifsInodeInfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int CIFS_MOUNT_NOPOSIXBRL ; 
 struct cifs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int CIFS_UNIX_FCNTL_CAP ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 int FUNC3 (struct cifsFileInfo*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct cifsFileInfo*) ; 
 struct cifs_tcon* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct cifsFileInfo *cfile)
{
	struct cifs_sb_info *cifs_sb = FUNC1(cfile->dentry->d_sb);
	struct cifsInodeInfo *cinode = FUNC0(FUNC4(cfile->dentry));
	struct cifs_tcon *tcon = FUNC8(cfile->tlink);
	int rc = 0;

	FUNC5(&cinode->lock_sem, SINGLE_DEPTH_NESTING);
	if (cinode->can_cache_brlcks) {
		/* can cache locks - no need to relock */
		FUNC9(&cinode->lock_sem);
		return rc;
	}

	if (FUNC2(tcon->ses) &&
	    (CIFS_UNIX_FCNTL_CAP & FUNC6(tcon->fsUnixInfo.Capability)) &&
	    ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NOPOSIXBRL) == 0))
		rc = FUNC3(cfile);
	else
		rc = tcon->ses->server->ops->push_mand_locks(cfile);

	FUNC9(&cinode->lock_sem);
	return rc;
}