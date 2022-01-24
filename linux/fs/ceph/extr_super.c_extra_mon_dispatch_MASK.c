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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct ceph_msg {TYPE_1__ hdr; } ;
struct ceph_fs_client {int /*<<< orphan*/  mdsc; } ;
struct ceph_client {struct ceph_fs_client* private; } ;

/* Variables and functions */
#define  CEPH_MSG_FS_MAP_USER 129 
#define  CEPH_MSG_MDS_MAP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ceph_msg*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ceph_client *client, struct ceph_msg *msg)
{
	struct ceph_fs_client *fsc = client->private;
	int type = FUNC2(msg->hdr.type);

	switch (type) {
	case CEPH_MSG_MDS_MAP:
		FUNC1(fsc->mdsc, msg);
		return 0;
	case CEPH_MSG_FS_MAP_USER:
		FUNC0(fsc->mdsc, msg);
		return 0;
	default:
		return -1;
	}
}