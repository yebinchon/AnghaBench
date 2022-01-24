#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct ceph_file_info* private_data; } ;
struct ceph_rw_context {int dummy; } ;
struct ceph_fs_client {TYPE_1__* mount_options; } ;
struct ceph_file_info {int dummy; } ;
struct address_space {int /*<<< orphan*/  host; } ;
struct TYPE_4__ {scalar_t__ i_inline_version; } ;
struct TYPE_3__ {int rsize; } ;

/* Variables and functions */
 scalar_t__ CEPH_INLINE_NONE ; 
 int EINVAL ; 
 int PAGE_SHIFT ; 
 struct ceph_rw_context* FUNC0 (struct ceph_file_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct list_head*) ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 struct ceph_fs_client* FUNC3 (struct inode*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct address_space*,struct list_head*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct inode*,struct file*,int,...) ; 
 struct inode* FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct list_head*) ; 
 int FUNC8 (struct inode*,struct ceph_rw_context*,struct list_head*,int) ; 

__attribute__((used)) static int FUNC9(struct file *file, struct address_space *mapping,
			  struct list_head *page_list, unsigned nr_pages)
{
	struct inode *inode = FUNC6(file);
	struct ceph_fs_client *fsc = FUNC3(inode);
	struct ceph_file_info *fi = file->private_data;
	struct ceph_rw_context *rw_ctx;
	int rc = 0;
	int max = 0;

	if (FUNC2(inode)->i_inline_version != CEPH_INLINE_NONE)
		return -EINVAL;

	rc = FUNC4(mapping->host, mapping, page_list,
					 &nr_pages);

	if (rc == 0)
		goto out;

	rw_ctx = FUNC0(fi);
	max = fsc->mount_options->rsize >> PAGE_SHIFT;
	FUNC5("readpages %p file %p ctx %p nr_pages %d max %d\n",
	     inode, file, rw_ctx, nr_pages, max);
	while (!FUNC7(page_list)) {
		rc = FUNC8(inode, rw_ctx, page_list, max);
		if (rc < 0)
			goto out;
	}
out:
	FUNC1(inode, page_list);

	FUNC5("readpages %p file %p ret %d\n", inode, file, rc);
	return rc;
}