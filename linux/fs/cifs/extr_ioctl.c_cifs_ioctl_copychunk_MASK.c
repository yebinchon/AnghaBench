#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_mode; } ;
struct file {int f_mode; } ;
struct fd {TYPE_2__* file; } ;
struct TYPE_5__ {TYPE_1__* f_op; } ;
struct TYPE_4__ {scalar_t__ unlocked_ioctl; } ;

/* Variables and functions */
 int EBADF ; 
 long EINVAL ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FYI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (unsigned int,TYPE_2__*,int /*<<< orphan*/ ,struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ cifs_ioctl ; 
 struct fd FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct fd) ; 
 struct inode* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 int FUNC7 (struct file*) ; 

__attribute__((used)) static long FUNC8(unsigned int xid, struct file *dst_file,
			unsigned long srcfd)
{
	int rc;
	struct fd src_file;
	struct inode *src_inode;

	FUNC1(FYI, "ioctl copychunk range\n");
	/* the destination must be opened for writing */
	if (!(dst_file->f_mode & FMODE_WRITE)) {
		FUNC1(FYI, "file target not open for write\n");
		return -EINVAL;
	}

	/* check if target volume is readonly and take reference */
	rc = FUNC7(dst_file);
	if (rc) {
		FUNC1(FYI, "mnt_want_write failed with rc %d\n", rc);
		return rc;
	}

	src_file = FUNC3(srcfd);
	if (!src_file.file) {
		rc = -EBADF;
		goto out_drop_write;
	}

	if (src_file.file->f_op->unlocked_ioctl != cifs_ioctl) {
		rc = -EBADF;
		FUNC1(VFS, "src file seems to be from a different filesystem type\n");
		goto out_fput;
	}

	src_inode = FUNC5(src_file.file);
	rc = -EINVAL;
	if (FUNC0(src_inode->i_mode))
		goto out_fput;

	rc = FUNC2(xid, src_file.file, 0, dst_file, 0,
					src_inode->i_size, 0);
	if (rc > 0)
		rc = 0;
out_fput:
	FUNC4(src_file);
out_drop_write:
	FUNC6(dst_file);
	return rc;
}