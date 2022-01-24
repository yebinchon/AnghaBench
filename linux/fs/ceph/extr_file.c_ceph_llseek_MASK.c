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
struct file {scalar_t__ f_pos; TYPE_1__* f_mapping; } ;
struct ceph_fs_client {int /*<<< orphan*/  max_file_size; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_STAT_CAP_SIZE ; 
 scalar_t__ ENXIO ; 
#define  SEEK_CUR 131 
#define  SEEK_DATA 130 
#define  SEEK_END 129 
#define  SEEK_HOLE 128 
 scalar_t__ FUNC0 (struct inode*,int /*<<< orphan*/ ,int) ; 
 struct ceph_fs_client* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct file*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static loff_t FUNC7(struct file *file, loff_t offset, int whence)
{
	struct inode *inode = file->f_mapping->host;
	struct ceph_fs_client *fsc = FUNC1(inode);
	loff_t i_size;
	loff_t ret;

	FUNC3(inode);

	if (whence == SEEK_END || whence == SEEK_DATA || whence == SEEK_HOLE) {
		ret = FUNC0(inode, CEPH_STAT_CAP_SIZE, false);
		if (ret < 0)
			goto out;
	}

	i_size = FUNC2(inode);
	switch (whence) {
	case SEEK_END:
		offset += i_size;
		break;
	case SEEK_CUR:
		/*
		 * Here we special-case the lseek(fd, 0, SEEK_CUR)
		 * position-querying operation.  Avoid rewriting the "same"
		 * f_pos value back to the file because a concurrent read(),
		 * write() or lseek() might have altered it
		 */
		if (offset == 0) {
			ret = file->f_pos;
			goto out;
		}
		offset += file->f_pos;
		break;
	case SEEK_DATA:
		if (offset < 0 || offset >= i_size) {
			ret = -ENXIO;
			goto out;
		}
		break;
	case SEEK_HOLE:
		if (offset < 0 || offset >= i_size) {
			ret = -ENXIO;
			goto out;
		}
		offset = i_size;
		break;
	}

	ret = FUNC6(file, offset, FUNC5(i_size, fsc->max_file_size));

out:
	FUNC4(inode);
	return ret;
}