#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct inode {TYPE_4__* i_mapping; } ;
struct fiemap_extent_info {int dummy; } ;
struct cifs_tcon {TYPE_2__* ses; } ;
struct cifs_sb_info {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_sb; } ;
struct cifsInodeInfo {TYPE_1__ vfs_inode; } ;
struct cifsFileInfo {int dummy; } ;
struct TCP_Server_Info {TYPE_3__* ops; } ;
struct TYPE_9__ {scalar_t__ nrpages; } ;
struct TYPE_8__ {int (* fiemap ) (struct cifs_tcon*,struct cifsFileInfo*,struct fiemap_extent_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {struct TCP_Server_Info* server; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cifsInodeInfo*) ; 
 struct cifsInodeInfo* FUNC1 (struct inode*) ; 
 struct cifs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC3 (struct cifsFileInfo*) ; 
 struct cifs_tcon* FUNC4 (struct cifs_sb_info*) ; 
 int FUNC5 (TYPE_4__*) ; 
 struct cifsFileInfo* FUNC6 (struct cifsInodeInfo*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 int FUNC8 (struct cifs_tcon*,struct cifsFileInfo*,struct fiemap_extent_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct inode *inode, struct fiemap_extent_info *fei, u64 start,
		u64 len)
{
	struct cifsInodeInfo *cifs_i = FUNC1(inode);
	struct cifs_sb_info *cifs_sb = FUNC2(cifs_i->vfs_inode.i_sb);
	struct cifs_tcon *tcon = FUNC4(cifs_sb);
	struct TCP_Server_Info *server = tcon->ses->server;
	struct cifsFileInfo *cfile;
	int rc;

	/*
	 * We need to be sure that all dirty pages are written as they
	 * might fill holes on the server.
	 */
	if (!FUNC0(FUNC1(inode)) && inode->i_mapping &&
	    inode->i_mapping->nrpages != 0) {
		rc = FUNC5(inode->i_mapping);
		if (rc) {
			FUNC7(inode->i_mapping, rc);
			return rc;
		}
	}

	cfile = FUNC6(cifs_i, false);
	if (cfile == NULL)
		return -EINVAL;

	if (server->ops->fiemap) {
		rc = server->ops->fiemap(tcon, cfile, fei, start, len);
		FUNC3(cfile);
		return rc;
	}

	FUNC3(cfile);
	return -ENOTSUPP;
}