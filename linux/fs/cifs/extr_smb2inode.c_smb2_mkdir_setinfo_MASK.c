#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct inode {int dummy; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct cifsInodeInfo {int cifsAttrs; } ;
struct cifsFileInfo {int dummy; } ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_4__ {int /*<<< orphan*/  Attributes; } ;
typedef  TYPE_1__ FILE_BASIC_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_NO_MODE ; 
 int ATTR_READONLY ; 
 struct cifsInodeInfo* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  CREATE_NOT_FILE ; 
 int /*<<< orphan*/  FILE_CREATE ; 
 int /*<<< orphan*/  FILE_WRITE_ATTRIBUTES ; 
 int /*<<< orphan*/  SMB2_OP_SET_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct cifs_tcon*,char const*,struct cifsFileInfo**) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (unsigned int const,struct cifs_tcon*,struct cifs_sb_info*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,struct cifsFileInfo*) ; 

void
FUNC5(struct inode *inode, const char *name,
		   struct cifs_sb_info *cifs_sb, struct cifs_tcon *tcon,
		   const unsigned int xid)
{
	FILE_BASIC_INFO data;
	struct cifsInodeInfo *cifs_i;
	struct cifsFileInfo *cfile;
	u32 dosattrs;
	int tmprc;

	FUNC3(&data, 0, sizeof(data));
	cifs_i = FUNC0(inode);
	dosattrs = cifs_i->cifsAttrs | ATTR_READONLY;
	data.Attributes = FUNC2(dosattrs);
	FUNC1(tcon, name, &cfile);
	tmprc = FUNC4(xid, tcon, cifs_sb, name,
				 FILE_WRITE_ATTRIBUTES, FILE_CREATE,
				 CREATE_NOT_FILE, ACL_NO_MODE,
				 &data, SMB2_OP_SET_INFO, cfile);
	if (tmprc == 0)
		cifs_i->cifsAttrs = dosattrs;
}