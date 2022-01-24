#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct ceph_mount_options {int max_readdir_bytes; int /*<<< orphan*/  max_readdir; } ;
struct TYPE_7__ {void* max_bytes; void* max_entries; } ;
struct TYPE_8__ {TYPE_3__ readdir; } ;
struct ceph_mds_reply_info_parsed {int dir_buf_size; void* dir_entries; } ;
struct ceph_mds_request {int r_num_caps; TYPE_4__ r_args; TYPE_2__* r_mdsc; struct ceph_mds_reply_info_parsed r_reply_info; } ;
struct ceph_mds_reply_dir_entry {int dummy; } ;
struct ceph_inode_info {int i_files; int i_subdirs; int /*<<< orphan*/  i_ceph_lock; } ;
struct TYPE_6__ {TYPE_1__* fsc; } ;
struct TYPE_5__ {struct ceph_mount_options* mount_options; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int __GFP_NOWARN ; 
 scalar_t__ FUNC0 (int,int) ; 
 struct ceph_inode_info* FUNC1 (struct inode*) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (size_t) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct ceph_mds_request *req,
				    struct inode *dir)
{
	struct ceph_inode_info *ci = FUNC1(dir);
	struct ceph_mds_reply_info_parsed *rinfo = &req->r_reply_info;
	struct ceph_mount_options *opt = req->r_mdsc->fsc->mount_options;
	size_t size = sizeof(struct ceph_mds_reply_dir_entry);
	int order, num_entries;

	FUNC6(&ci->i_ceph_lock);
	num_entries = ci->i_files + ci->i_subdirs;
	FUNC7(&ci->i_ceph_lock);
	num_entries = FUNC4(num_entries, 1);
	num_entries = FUNC5(num_entries, opt->max_readdir);

	order = FUNC3(size * num_entries);
	while (order >= 0) {
		rinfo->dir_entries = (void*)FUNC0(GFP_KERNEL |
							     __GFP_NOWARN,
							     order);
		if (rinfo->dir_entries)
			break;
		order--;
	}
	if (!rinfo->dir_entries)
		return -ENOMEM;

	num_entries = (PAGE_SIZE << order) / size;
	num_entries = FUNC5(num_entries, opt->max_readdir);

	rinfo->dir_buf_size = PAGE_SIZE << order;
	req->r_num_caps = num_entries + 1;
	req->r_args.readdir.max_entries = FUNC2(num_entries);
	req->r_args.readdir.max_bytes = FUNC2(opt->max_readdir_bytes);
	return 0;
}