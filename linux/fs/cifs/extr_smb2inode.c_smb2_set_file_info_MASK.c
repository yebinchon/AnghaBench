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
struct tcon_link {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct cifs_sb_info {int dummy; } ;
struct TYPE_4__ {scalar_t__ CreationTime; scalar_t__ LastAccessTime; scalar_t__ LastWriteTime; scalar_t__ ChangeTime; scalar_t__ Attributes; } ;
typedef  TYPE_1__ FILE_BASIC_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_NO_MODE ; 
 struct cifs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_OPEN ; 
 int /*<<< orphan*/  FILE_WRITE_ATTRIBUTES ; 
 scalar_t__ FUNC1 (struct tcon_link*) ; 
 int FUNC2 (struct tcon_link*) ; 
 int /*<<< orphan*/  SMB2_OP_SET_INFO ; 
 int /*<<< orphan*/  FUNC3 (struct tcon_link*) ; 
 struct tcon_link* FUNC4 (struct cifs_sb_info*) ; 
 int FUNC5 (unsigned int const,int /*<<< orphan*/ ,struct cifs_sb_info*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tcon_link*) ; 

int
FUNC7(struct inode *inode, const char *full_path,
		   FILE_BASIC_INFO *buf, const unsigned int xid)
{
	struct cifs_sb_info *cifs_sb = FUNC0(inode->i_sb);
	struct tcon_link *tlink;
	int rc;

	if ((buf->CreationTime == 0) && (buf->LastAccessTime == 0) &&
	    (buf->LastWriteTime == 0) && (buf->ChangeTime == 0) &&
	    (buf->Attributes == 0))
		return 0; /* would be a no op, no sense sending this */

	tlink = FUNC4(cifs_sb);
	if (FUNC1(tlink))
		return FUNC2(tlink);

	rc = FUNC5(xid, FUNC6(tlink), cifs_sb, full_path,
			      FILE_WRITE_ATTRIBUTES, FILE_OPEN,
			      0, ACL_NO_MODE, buf, SMB2_OP_SET_INFO, NULL);
	FUNC3(tlink);
	return rc;
}