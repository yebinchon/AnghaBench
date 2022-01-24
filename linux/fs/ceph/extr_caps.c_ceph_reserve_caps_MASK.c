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
struct ceph_mds_session {int s_nr_caps; int /*<<< orphan*/  s_mutex; } ;
struct ceph_mds_client {int caps_avail_count; int caps_reserve_count; int caps_total_count; int caps_use_count; int max_sessions; int /*<<< orphan*/  caps_list_lock; int /*<<< orphan*/  caps_list; int /*<<< orphan*/  mutex; } ;
struct ceph_cap_reservation {int count; scalar_t__ used; } ;
struct ceph_cap {int /*<<< orphan*/  caps_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ceph_mds_session* FUNC2 (struct ceph_mds_client*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_mds_client*,int) ; 
 int /*<<< orphan*/  ceph_cap_cachep ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_mds_client*,struct ceph_mds_session*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct ceph_cap_reservation*,int,...) ; 
 struct ceph_cap* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  newcaps ; 
 int /*<<< orphan*/  FUNC12 (char*,struct ceph_cap_reservation*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct ceph_mds_client *mdsc,
		      struct ceph_cap_reservation *ctx, int need)
{
	int i, j;
	struct ceph_cap *cap;
	int have;
	int alloc = 0;
	int max_caps;
	int err = 0;
	bool trimmed = false;
	struct ceph_mds_session *s;
	FUNC1(newcaps);

	FUNC6("reserve caps ctx=%p need=%d\n", ctx, need);

	/* first reserve any caps that are already allocated */
	FUNC13(&mdsc->caps_list_lock);
	if (mdsc->caps_avail_count >= need)
		have = need;
	else
		have = mdsc->caps_avail_count;
	mdsc->caps_avail_count -= have;
	mdsc->caps_reserve_count += have;
	FUNC0(mdsc->caps_total_count != mdsc->caps_use_count +
					 mdsc->caps_reserve_count +
					 mdsc->caps_avail_count);
	FUNC14(&mdsc->caps_list_lock);

	for (i = have; i < need; ) {
		cap = FUNC7(ceph_cap_cachep, GFP_NOFS);
		if (cap) {
			FUNC8(&cap->caps_item, &newcaps);
			alloc++;
			i++;
			continue;
		}

		if (!trimmed) {
			for (j = 0; j < mdsc->max_sessions; j++) {
				s = FUNC2(mdsc, j);
				if (!s)
					continue;
				FUNC11(&mdsc->mutex);

				FUNC10(&s->s_mutex);
				max_caps = s->s_nr_caps - (need - i);
				FUNC5(mdsc, s, max_caps);
				FUNC11(&s->s_mutex);

				FUNC4(s);
				FUNC10(&mdsc->mutex);
			}
			trimmed = true;

			FUNC13(&mdsc->caps_list_lock);
			if (mdsc->caps_avail_count) {
				int more_have;
				if (mdsc->caps_avail_count >= need - i)
					more_have = need - i;
				else
					more_have = mdsc->caps_avail_count;

				i += more_have;
				have += more_have;
				mdsc->caps_avail_count -= more_have;
				mdsc->caps_reserve_count += more_have;

			}
			FUNC14(&mdsc->caps_list_lock);

			continue;
		}

		FUNC12("reserve caps ctx=%p ENOMEM need=%d got=%d\n",
			ctx, need, have + alloc);
		err = -ENOMEM;
		break;
	}

	if (!err) {
		FUNC0(have + alloc != need);
		ctx->count = need;
		ctx->used = 0;
	}

	FUNC13(&mdsc->caps_list_lock);
	mdsc->caps_total_count += alloc;
	mdsc->caps_reserve_count += alloc;
	FUNC9(&newcaps, &mdsc->caps_list);

	FUNC0(mdsc->caps_total_count != mdsc->caps_use_count +
					 mdsc->caps_reserve_count +
					 mdsc->caps_avail_count);

	if (err)
		FUNC3(mdsc, have + alloc);

	FUNC14(&mdsc->caps_list_lock);

	FUNC6("reserve caps ctx=%p %d = %d used + %d resv + %d avail\n",
	     ctx, mdsc->caps_total_count, mdsc->caps_use_count,
	     mdsc->caps_reserve_count, mdsc->caps_avail_count);
	return err;
}