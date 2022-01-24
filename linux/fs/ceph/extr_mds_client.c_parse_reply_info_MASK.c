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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int iov_len; void* iov_base; } ;
struct ceph_msg {TYPE_1__ front; } ;
struct ceph_mds_reply_info_parsed {void* snapblob; scalar_t__ snapblob_len; void* head; } ;
struct ceph_mds_reply_head {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  bad ; 
 int /*<<< orphan*/  FUNC0 (void**,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (void**,void*,struct ceph_mds_reply_info_parsed*,int /*<<< orphan*/ ) ; 
 int FUNC3 (void**,void*,struct ceph_mds_reply_info_parsed*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(struct ceph_msg *msg,
			    struct ceph_mds_reply_info_parsed *info,
			    u64 features)
{
	void *p, *end;
	u32 len;
	int err;

	info->head = msg->front.iov_base;
	p = msg->front.iov_base + sizeof(struct ceph_mds_reply_head);
	end = p + msg->front.iov_len - sizeof(struct ceph_mds_reply_head);

	/* trace */
	FUNC0(&p, end, len, bad);
	if (len > 0) {
		FUNC1(&p, end, len, bad);
		err = FUNC3(&p, p+len, info, features);
		if (err < 0)
			goto out_bad;
	}

	/* extra */
	FUNC0(&p, end, len, bad);
	if (len > 0) {
		FUNC1(&p, end, len, bad);
		err = FUNC2(&p, p+len, info, features);
		if (err < 0)
			goto out_bad;
	}

	/* snap blob */
	FUNC0(&p, end, len, bad);
	info->snapblob_len = len;
	info->snapblob = p;
	p += len;

	if (p != end)
		goto bad;
	return 0;

bad:
	err = -EIO;
out_bad:
	FUNC4("mds parse_reply err %d\n", err);
	return err;
}