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
struct socket {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  in_mutex; int /*<<< orphan*/  irq; int /*<<< orphan*/  data; int /*<<< orphan*/  ring; int /*<<< orphan*/  inflight_conn_req; } ;
struct sock_mapping {TYPE_1__ active; } ;
struct msghdr {int /*<<< orphan*/  msg_iter; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct sock_mapping*) ; 
 int MSG_CMSG_CLOEXEC ; 
 int MSG_DONTWAIT ; 
 int MSG_ERRQUEUE ; 
 int MSG_OOB ; 
 int MSG_TRUNC ; 
 int FUNC1 (struct sock_mapping*) ; 
 int /*<<< orphan*/  PVCALLS_RING_ORDER ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct sock_mapping* FUNC7 (struct socket*) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock_mapping*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(struct socket *sock, struct msghdr *msg, size_t len,
		     int flags)
{
	int ret;
	struct sock_mapping *map;

	if (flags & (MSG_CMSG_CLOEXEC|MSG_ERRQUEUE|MSG_OOB|MSG_TRUNC))
		return -EOPNOTSUPP;

	map = FUNC7(sock);
	if (FUNC0(map))
		return FUNC1(map);

	FUNC4(&map->active.in_mutex);
	if (len > FUNC2(PVCALLS_RING_ORDER))
		len = FUNC2(PVCALLS_RING_ORDER);

	while (!(flags & MSG_DONTWAIT) && !FUNC9(map)) {
		FUNC10(map->active.inflight_conn_req,
					 FUNC9(map));
	}
	ret = FUNC3(map->active.ring, &map->active.data,
			  &msg->msg_iter, len, flags);

	if (ret > 0)
		FUNC6(map->active.irq);
	if (ret == 0)
		ret = (flags & MSG_DONTWAIT) ? -EAGAIN : 0;
	if (ret == -ENOTCONN)
		ret = 0;

	FUNC5(&map->active.in_mutex);
	FUNC8(sock);
	return ret;
}