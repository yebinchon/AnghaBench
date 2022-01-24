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
struct inode {scalar_t__ i_size; } ;
struct cifs_tcon {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  volatile_fid; int /*<<< orphan*/  persistent_fid; } ;
struct cifsFileInfo {int /*<<< orphan*/  pid; TYPE_1__ fid; int /*<<< orphan*/  dentry; } ;
typedef  int __u8 ;
typedef  scalar_t__ __u64 ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int FUNC0 (unsigned int const,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int const,struct cifs_tcon*,struct cifsFileInfo*,struct inode*,int) ; 

__attribute__((used)) static int
FUNC4(const unsigned int xid, struct cifs_tcon *tcon,
		   struct cifsFileInfo *cfile, __u64 size, bool set_alloc)
{
	__le64 eof = FUNC1(size);
	struct inode *inode;

	/*
	 * If extending file more than one page make sparse. Many Linux fs
	 * make files sparse by default when extending via ftruncate
	 */
	inode = FUNC2(cfile->dentry);

	if (!set_alloc && (size > inode->i_size + 8192)) {
		__u8 set_sparse = 1;

		/* whether set sparse succeeds or not, extend the file */
		FUNC3(xid, tcon, cfile, inode, set_sparse);
	}

	return FUNC0(xid, tcon, cfile->fid.persistent_fid,
			    cfile->fid.volatile_fid, cfile->pid, &eof);
}