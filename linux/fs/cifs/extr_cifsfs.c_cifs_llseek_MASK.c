#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_4__* i_mapping; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifs_tcon {TYPE_3__* ses; } ;
struct cifsFileInfo {scalar_t__ tlink; } ;
typedef  int loff_t ;
struct TYPE_12__ {scalar_t__ time; } ;
struct TYPE_11__ {scalar_t__ nrpages; } ;
struct TYPE_10__ {TYPE_2__* server; } ;
struct TYPE_9__ {TYPE_1__* ops; } ;
struct TYPE_8__ {int (* llseek ) (struct file*,struct cifs_tcon*,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 TYPE_6__* FUNC1 (struct inode*) ; 
 int SEEK_CUR ; 
 int SEEK_SET ; 
 int FUNC2 (struct file*) ; 
 struct inode* FUNC3 (struct file*) ; 
 int FUNC4 (TYPE_4__*) ; 
 int FUNC5 (struct file*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int FUNC7 (struct file*,struct cifs_tcon*,int,int) ; 
 struct cifs_tcon* FUNC8 (scalar_t__) ; 

__attribute__((used)) static loff_t FUNC9(struct file *file, loff_t offset, int whence)
{
	struct cifsFileInfo *cfile = file->private_data;
	struct cifs_tcon *tcon;

	/*
	 * whence == SEEK_END || SEEK_DATA || SEEK_HOLE => we must revalidate
	 * the cached file length
	 */
	if (whence != SEEK_SET && whence != SEEK_CUR) {
		int rc;
		struct inode *inode = FUNC3(file);

		/*
		 * We need to be sure that all dirty pages are written and the
		 * server has the newest file length.
		 */
		if (!FUNC0(FUNC1(inode)) && inode->i_mapping &&
		    inode->i_mapping->nrpages != 0) {
			rc = FUNC4(inode->i_mapping);
			if (rc) {
				FUNC6(inode->i_mapping, rc);
				return rc;
			}
		}
		/*
		 * Some applications poll for the file length in this strange
		 * way so we must seek to end on non-oplocked files by
		 * setting the revalidate time to zero.
		 */
		FUNC1(inode)->time = 0;

		rc = FUNC2(file);
		if (rc < 0)
			return (loff_t)rc;
	}
	if (cfile && cfile->tlink) {
		tcon = FUNC8(cfile->tlink);
		if (tcon->ses->server->ops->llseek)
			return tcon->ses->server->ops->llseek(file, tcon,
							      offset, whence);
	}
	return FUNC5(file, offset, whence);
}