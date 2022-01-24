#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct inode {int dummy; } ;
struct file {struct ceph_file_info* private_data; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_ceph_lock; int /*<<< orphan*/ * i_nr_by_mode; } ;
struct ceph_file_info {int fmode; } ;

/* Variables and functions */
 int CEPH_FILE_MODE_LAZY ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_inode_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ceph_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct file*) ; 
 size_t FUNC3 (int) ; 
 struct inode* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC7(struct file *file)
{
	struct ceph_file_info *fi = file->private_data;
	struct inode *inode = FUNC4(file);
	struct ceph_inode_info *ci = FUNC1(inode);

	if ((fi->fmode & CEPH_FILE_MODE_LAZY) == 0) {
		FUNC5(&ci->i_ceph_lock);
		fi->fmode |= CEPH_FILE_MODE_LAZY;
		ci->i_nr_by_mode[FUNC3(CEPH_FILE_MODE_LAZY)]++;
		FUNC6(&ci->i_ceph_lock);
		FUNC2("ioctl_layzio: file %p marked lazy\n", file);

		FUNC0(ci, 0, NULL);
	} else {
		FUNC2("ioctl_layzio: file %p already lazy\n", file);
	}
	return 0;
}