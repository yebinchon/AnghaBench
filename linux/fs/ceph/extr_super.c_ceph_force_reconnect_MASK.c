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
struct super_block {scalar_t__ s_root; } ;
struct ceph_fs_client {int blacklisted; int /*<<< orphan*/  mount_state; TYPE_1__* client; int /*<<< orphan*/  inode_wq; } ;
struct TYPE_2__ {int /*<<< orphan*/  osdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_MOUNT_MOUNTED ; 
 int /*<<< orphan*/  CEPH_STAT_CAP_INODE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct ceph_fs_client* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct super_block *sb)
{
	struct ceph_fs_client *fsc = FUNC3(sb);
	int err = 0;

	FUNC4(sb);

	/* Make sure all page caches get invalidated.
	 * see remove_session_caps_cb() */
	FUNC6(fsc->inode_wq);

	/* In case that we were blacklisted. This also reset
	 * all mon/osd connections */
	FUNC2(fsc->client);

	FUNC1(&fsc->client->osdc);

	fsc->blacklisted = false;
	fsc->mount_state = CEPH_MOUNT_MOUNTED;

	if (sb->s_root) {
		err = FUNC0(FUNC5(sb->s_root), NULL,
					CEPH_STAT_CAP_INODE, true);
	}
	return err;
}