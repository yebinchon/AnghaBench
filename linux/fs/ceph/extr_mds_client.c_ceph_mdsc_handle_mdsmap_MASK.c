#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int iov_len; void* iov_base; } ;
struct ceph_msg {TYPE_1__ front; } ;
struct ceph_mdsmap {int m_epoch; scalar_t__ m_max_file_size; } ;
struct ceph_mds_client {int /*<<< orphan*/  mutex; struct ceph_mdsmap* mdsmap; TYPE_2__* fsc; int /*<<< orphan*/  waiting_for_map; } ;
struct ceph_fsid {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  fsid ;
struct TYPE_6__ {int /*<<< orphan*/  monc; } ;
struct TYPE_5__ {TYPE_3__* client; int /*<<< orphan*/  max_file_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_SUB_MDSMAP ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct ceph_mdsmap*) ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int FUNC1 (struct ceph_mdsmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_mds_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bad ; 
 scalar_t__ FUNC3 (TYPE_3__*,struct ceph_fsid*) ; 
 int FUNC4 (void**) ; 
 int /*<<< orphan*/  FUNC5 (void**,struct ceph_fsid*,int) ; 
 int /*<<< orphan*/  FUNC6 (void**,void*,int,int /*<<< orphan*/ ) ; 
 struct ceph_mdsmap* FUNC7 (void**,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_mdsmap*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ceph_mds_client*,struct ceph_mdsmap*,struct ceph_mdsmap*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ceph_mds_client*) ; 

void FUNC17(struct ceph_mds_client *mdsc, struct ceph_msg *msg)
{
	u32 epoch;
	u32 maplen;
	void *p = msg->front.iov_base;
	void *end = p + msg->front.iov_len;
	struct ceph_mdsmap *newmap, *oldmap;
	struct ceph_fsid fsid;
	int err = -EINVAL;

	FUNC6(&p, end, sizeof(fsid)+2*sizeof(u32), bad);
	FUNC5(&p, &fsid, sizeof(fsid));
	if (FUNC3(mdsc->fsc->client, &fsid) < 0)
		return;
	epoch = FUNC4(&p);
	maplen = FUNC4(&p);
	FUNC11("handle_map epoch %u len %d\n", epoch, (int)maplen);

	/* do we need it? */
	FUNC13(&mdsc->mutex);
	if (mdsc->mdsmap && epoch <= mdsc->mdsmap->m_epoch) {
		FUNC11("handle_map epoch %u <= our %u\n",
		     epoch, mdsc->mdsmap->m_epoch);
		FUNC14(&mdsc->mutex);
		return;
	}

	newmap = FUNC7(&p, end);
	if (FUNC0(newmap)) {
		err = FUNC1(newmap);
		goto bad_unlock;
	}

	/* swap into place */
	if (mdsc->mdsmap) {
		oldmap = mdsc->mdsmap;
		mdsc->mdsmap = newmap;
		FUNC10(mdsc, newmap, oldmap);
		FUNC8(oldmap);
	} else {
		mdsc->mdsmap = newmap;  /* first mds map */
	}
	mdsc->fsc->max_file_size = FUNC12((loff_t)mdsc->mdsmap->m_max_file_size,
					MAX_LFS_FILESIZE);

	FUNC2(mdsc, &mdsc->waiting_for_map);
	FUNC9(&mdsc->fsc->client->monc, CEPH_SUB_MDSMAP,
			  mdsc->mdsmap->m_epoch);

	FUNC14(&mdsc->mutex);
	FUNC16(mdsc);
	return;

bad_unlock:
	FUNC14(&mdsc->mutex);
bad:
	FUNC15("error decoding mdsmap %d\n", err);
	return;
}