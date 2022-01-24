#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_8__ {int iov_len; void* iov_base; } ;
struct ceph_msg {TYPE_2__ front; } ;
struct ceph_mds_client {int mdsmap_err; int /*<<< orphan*/  mutex; int /*<<< orphan*/  waiting_for_map; struct ceph_fs_client* fsc; } ;
struct ceph_fs_client {TYPE_3__* client; TYPE_1__* mount_options; } ;
struct TYPE_10__ {int fs_cluster_id; } ;
struct TYPE_9__ {TYPE_4__ monc; } ;
struct TYPE_7__ {char* mds_namespace; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_SUB_FSMAP ; 
 int /*<<< orphan*/  CEPH_SUB_MDSMAP ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_mds_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bad ; 
 int FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*,int) ; 

void FUNC13(struct ceph_mds_client *mdsc, struct ceph_msg *msg)
{
	struct ceph_fs_client *fsc = mdsc->fsc;
	const char *mds_namespace = fsc->mount_options->mds_namespace;
	void *p = msg->front.iov_base;
	void *end = p + msg->front.iov_len;
	u32 epoch;
	u32 map_len;
	u32 num_fs;
	u32 mount_fscid = (u32)-1;
	u8 struct_v, struct_cv;
	int err = -EINVAL;

	FUNC3(&p, end, sizeof(u32), bad);
	epoch = FUNC1(&p);

	FUNC7("handle_fsmap epoch %u\n", epoch);

	FUNC3(&p, end, 2 + sizeof(u32), bad);
	struct_v = FUNC2(&p);
	struct_cv = FUNC2(&p);
	map_len = FUNC1(&p);

	FUNC3(&p, end, sizeof(u32) * 3, bad);
	p += sizeof(u32) * 2; /* skip epoch and legacy_client_fscid */

	num_fs = FUNC1(&p);
	while (num_fs-- > 0) {
		void *info_p, *info_end;
		u32 info_len;
		u8 info_v, info_cv;
		u32 fscid, namelen;

		FUNC3(&p, end, 2 + sizeof(u32), bad);
		info_v = FUNC2(&p);
		info_cv = FUNC2(&p);
		info_len = FUNC1(&p);
		FUNC3(&p, end, info_len, bad);
		info_p = p;
		info_end = p + info_len;
		p = info_end;

		FUNC3(&info_p, info_end, sizeof(u32) * 2, bad);
		fscid = FUNC1(&info_p);
		namelen = FUNC1(&info_p);
		FUNC3(&info_p, info_end, namelen, bad);

		if (mds_namespace &&
		    FUNC11(mds_namespace) == namelen &&
		    !FUNC12(mds_namespace, (char *)info_p, namelen)) {
			mount_fscid = fscid;
			break;
		}
	}

	FUNC4(&fsc->client->monc, CEPH_SUB_FSMAP, epoch);
	if (mount_fscid != (u32)-1) {
		fsc->client->monc.fs_cluster_id = mount_fscid;
		FUNC6(&fsc->client->monc, CEPH_SUB_MDSMAP,
				   0, true);
		FUNC5(&fsc->client->monc);
	} else {
		err = -ENOENT;
		goto err_out;
	}
	return;

bad:
	FUNC10("error decoding fsmap\n");
err_out:
	FUNC8(&mdsc->mutex);
	mdsc->mdsmap_err = err;
	FUNC0(mdsc, &mdsc->waiting_for_map);
	FUNC9(&mdsc->mutex);
}