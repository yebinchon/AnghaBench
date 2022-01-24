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
typedef  scalar_t__ u64 ;
struct vhost_virtqueue {scalar_t__ log_ctx; int /*<<< orphan*/  log_base; scalar_t__ iotlb; } ;
struct vhost_log {int /*<<< orphan*/  addr; int /*<<< orphan*/  len; } ;
struct iovec {int /*<<< orphan*/  iov_len; scalar_t__ iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct vhost_virtqueue*,uintptr_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(struct vhost_virtqueue *vq, struct vhost_log *log,
		    unsigned int log_num, u64 len, struct iovec *iov, int count)
{
	int i, r;

	/* Make sure data written is seen before log. */
	FUNC5();

	if (vq->iotlb) {
		for (i = 0; i < count; i++) {
			r = FUNC3(vq, (uintptr_t)iov[i].iov_base,
					  iov[i].iov_len);
			if (r < 0)
				return r;
		}
		return 0;
	}

	for (i = 0; i < log_num; ++i) {
		u64 l = FUNC4(log[i].len, len);
		r = FUNC2(vq->log_base, log[i].addr, l);
		if (r < 0)
			return r;
		len -= l;
		if (!len) {
			if (vq->log_ctx)
				FUNC1(vq->log_ctx, 1);
			return 0;
		}
	}
	/* Length written exceeds what we have stored. This is a bug. */
	FUNC0();
	return 0;
}