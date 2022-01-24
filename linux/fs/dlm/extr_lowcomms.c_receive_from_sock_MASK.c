#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct msghdr {int /*<<< orphan*/  msg_iter; } ;
struct kvec {unsigned int iov_len; scalar_t__ iov_base; } ;
struct TYPE_6__ {scalar_t__ base; int /*<<< orphan*/  len; } ;
struct connection {scalar_t__ nodeid; int /*<<< orphan*/  sock_mutex; int /*<<< orphan*/  rwork; int /*<<< orphan*/  flags; int /*<<< orphan*/ * rx_page; TYPE_1__ cb; int /*<<< orphan*/ * sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_READ_PENDING ; 
 int EAGAIN ; 
 int EBADMSG ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MSG_DONTWAIT ; 
 int MSG_NOSIGNAL ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct connection*,int,int,int) ; 
 int FUNC8 (scalar_t__,scalar_t__,unsigned int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kvec*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  recv_workqueue ; 
 int FUNC15 (int /*<<< orphan*/ *,struct msghdr*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct connection *con)
{
	int ret = 0;
	struct msghdr msg = {};
	struct kvec iov[2];
	unsigned len;
	int r;
	int call_again_soon = 0;
	int nvec;

	FUNC11(&con->sock_mutex);

	if (con->sock == NULL) {
		ret = -EAGAIN;
		goto out_close;
	}
	if (con->nodeid == 0) {
		ret = -EINVAL;
		goto out_close;
	}

	if (con->rx_page == NULL) {
		/*
		 * This doesn't need to be atomic, but I think it should
		 * improve performance if it is.
		 */
		con->rx_page = FUNC1(GFP_ATOMIC);
		if (con->rx_page == NULL)
			goto out_resched;
		FUNC6(&con->cb, PAGE_SIZE);
	}

	/*
	 * iov[0] is the bit of the circular buffer between the current end
	 * point (cb.base + cb.len) and the end of the buffer.
	 */
	iov[0].iov_len = con->cb.base - FUNC3(&con->cb);
	iov[0].iov_base = FUNC13(con->rx_page) + FUNC3(&con->cb);
	iov[1].iov_len = 0;
	nvec = 1;

	/*
	 * iov[1] is the bit of the circular buffer between the start of the
	 * buffer and the start of the currently used section (cb.base)
	 */
	if (FUNC3(&con->cb) >= con->cb.base) {
		iov[0].iov_len = PAGE_SIZE - FUNC3(&con->cb);
		iov[1].iov_len = con->cb.base;
		iov[1].iov_base = FUNC13(con->rx_page);
		nvec = 2;
	}
	len = iov[0].iov_len + iov[1].iov_len;
	FUNC9(&msg.msg_iter, READ, iov, nvec, len);

	r = ret = FUNC15(con->sock, &msg, MSG_DONTWAIT | MSG_NOSIGNAL);
	if (ret <= 0)
		goto out_close;
	else if (ret == len)
		call_again_soon = 1;

	FUNC2(&con->cb, ret);
	ret = FUNC8(con->nodeid,
					  FUNC13(con->rx_page),
					  con->cb.base, con->cb.len,
					  PAGE_SIZE);
	if (ret == -EBADMSG) {
		FUNC10("lowcomms: addr=%p, base=%u, len=%u, read=%d",
			  FUNC13(con->rx_page), con->cb.base,
			  con->cb.len, r);
	}
	if (ret < 0)
		goto out_close;
	FUNC4(&con->cb, ret);

	if (FUNC5(&con->cb) && !call_again_soon) {
		FUNC0(con->rx_page);
		con->rx_page = NULL;
	}

	if (call_again_soon)
		goto out_resched;
	FUNC12(&con->sock_mutex);
	return 0;

out_resched:
	if (!FUNC16(CF_READ_PENDING, &con->flags))
		FUNC14(recv_workqueue, &con->rwork);
	FUNC12(&con->sock_mutex);
	return -EAGAIN;

out_close:
	FUNC12(&con->sock_mutex);
	if (ret != -EAGAIN) {
		FUNC7(con, true, true, false);
		/* Reconnect when there is something to send */
	}
	/* Don't return success if we really got EOF */
	if (ret == 0)
		ret = -EAGAIN;

	return ret;
}