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
struct inode {int dummy; } ;
struct file_zero_data_information {void* BeyondFinalZero; void* FileOffset; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifs_tcon {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  volatile_fid; int /*<<< orphan*/  persistent_fid; } ;
struct cifsFileInfo {TYPE_1__ fid; int /*<<< orphan*/  dentry; } ;
typedef  scalar_t__ loff_t ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  CIFSMaxBufSize ; 
 long EOPNOTSUPP ; 
 int /*<<< orphan*/  FSCTL_SET_ZERO_DATA ; 
 int /*<<< orphan*/  FYI ; 
 long FUNC0 (unsigned int,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 void* FUNC2 (scalar_t__) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,struct cifs_tcon*,struct cifsFileInfo*,struct inode*,int) ; 

__attribute__((used)) static long FUNC7(struct file *file, struct cifs_tcon *tcon,
			    loff_t offset, loff_t len)
{
	struct inode *inode;
	struct cifsFileInfo *cfile = file->private_data;
	struct file_zero_data_information fsctl_buf;
	long rc;
	unsigned int xid;
	__u8 set_sparse = 1;

	xid = FUNC5();

	inode = FUNC3(cfile->dentry);

	/* Need to make file sparse, if not already, before freeing range. */
	/* Consider adding equivalent for compressed since it could also work */
	if (!FUNC6(xid, tcon, cfile, inode, set_sparse)) {
		rc = -EOPNOTSUPP;
		FUNC4(xid);
		return rc;
	}

	FUNC1(FYI, "Offset %lld len %lld\n", offset, len);

	fsctl_buf.FileOffset = FUNC2(offset);
	fsctl_buf.BeyondFinalZero = FUNC2(offset + len);

	rc = FUNC0(xid, tcon, cfile->fid.persistent_fid,
			cfile->fid.volatile_fid, FSCTL_SET_ZERO_DATA,
			true /* is_fctl */, (char *)&fsctl_buf,
			sizeof(struct file_zero_data_information),
			CIFSMaxBufSize, NULL, NULL);
	FUNC4(xid);
	return rc;
}