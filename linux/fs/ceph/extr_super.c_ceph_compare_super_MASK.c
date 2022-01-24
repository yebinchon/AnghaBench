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
struct super_block {int dummy; } ;
struct ceph_options {int flags; int /*<<< orphan*/  fsid; } ;
struct ceph_mount_options {scalar_t__ sb_flags; } ;
struct ceph_fs_client {struct ceph_mount_options* mount_options; TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  fsid; struct ceph_options* options; } ;

/* Variables and functions */
 int CEPH_OPT_FSID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ceph_fs_client* FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (struct ceph_mount_options*,struct ceph_options*,struct ceph_fs_client*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb, void *data)
{
	struct ceph_fs_client *new = data;
	struct ceph_mount_options *fsopt = new->mount_options;
	struct ceph_options *opt = new->client->options;
	struct ceph_fs_client *other = FUNC1(sb);

	FUNC3("ceph_compare_super %p\n", sb);

	if (FUNC2(fsopt, opt, other)) {
		FUNC3("monitor(s)/mount options don't match\n");
		return 0;
	}
	if ((opt->flags & CEPH_OPT_FSID) &&
	    FUNC0(&opt->fsid, &other->client->fsid)) {
		FUNC3("fsid doesn't match\n");
		return 0;
	}
	if (fsopt->sb_flags != other->mount_options->sb_flags) {
		FUNC3("flags differ\n");
		return 0;
	}
	return 1;
}