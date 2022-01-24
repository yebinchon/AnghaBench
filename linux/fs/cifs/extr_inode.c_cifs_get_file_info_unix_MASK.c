#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_fattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  netfid; } ;
struct cifsFileInfo {TYPE_1__ fid; int /*<<< orphan*/  tlink; } ;
typedef  int /*<<< orphan*/  FILE_UNIX_BASIC_INFO ;

/* Variables and functions */
 int FUNC0 (unsigned int,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cifs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int EREMOTE ; 
 int /*<<< orphan*/  FUNC2 (struct cifs_fattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct cifs_fattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct cifs_fattr*,int /*<<< orphan*/ *,struct cifs_sb_info*) ; 
 struct inode* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 unsigned int FUNC7 () ; 
 struct cifs_tcon* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct file *filp)
{
	int rc;
	unsigned int xid;
	FILE_UNIX_BASIC_INFO find_data;
	struct cifs_fattr fattr;
	struct inode *inode = FUNC5(filp);
	struct cifs_sb_info *cifs_sb = FUNC1(inode->i_sb);
	struct cifsFileInfo *cfile = filp->private_data;
	struct cifs_tcon *tcon = FUNC8(cfile->tlink);

	xid = FUNC7();
	rc = FUNC0(xid, tcon, cfile->fid.netfid, &find_data);
	if (!rc) {
		FUNC4(&fattr, &find_data, cifs_sb);
	} else if (rc == -EREMOTE) {
		FUNC2(&fattr, inode->i_sb);
		rc = 0;
	}

	FUNC3(inode, &fattr);
	FUNC6(xid);
	return rc;
}