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
struct TYPE_2__ {int /*<<< orphan*/  out_mutex; int /*<<< orphan*/  irq; int /*<<< orphan*/  data; int /*<<< orphan*/  ring; } ;
struct sock_mapping {TYPE_1__ active; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iter; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EOPNOTSUPP ; 
 size_t INT_MAX ; 
 scalar_t__ FUNC0 (struct sock_mapping*) ; 
 int MSG_CONFIRM ; 
 int MSG_DONTROUTE ; 
 int MSG_DONTWAIT ; 
 int MSG_EOR ; 
 int MSG_OOB ; 
 int FUNC1 (struct sock_mapping*) ; 
 int PVCALLS_FRONT_MAX_SPIN ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct sock_mapping* FUNC6 (struct socket*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock_mapping*) ; 

int FUNC9(struct socket *sock, struct msghdr *msg,
			  size_t len)
{
	struct sock_mapping *map;
	int sent, tot_sent = 0;
	int count = 0, flags;

	flags = msg->msg_flags;
	if (flags & (MSG_CONFIRM|MSG_DONTROUTE|MSG_EOR|MSG_OOB))
		return -EOPNOTSUPP;

	map = FUNC6(sock);
	if (FUNC0(map))
		return FUNC1(map);

	FUNC3(&map->active.out_mutex);
	if ((flags & MSG_DONTWAIT) && !FUNC8(map)) {
		FUNC4(&map->active.out_mutex);
		FUNC7(sock);
		return -EAGAIN;
	}
	if (len > INT_MAX)
		len = INT_MAX;

again:
	count++;
	sent = FUNC2(map->active.ring,
			    &map->active.data, &msg->msg_iter,
			    len);
	if (sent > 0) {
		len -= sent;
		tot_sent += sent;
		FUNC5(map->active.irq);
	}
	if (sent >= 0 && len > 0 && count < PVCALLS_FRONT_MAX_SPIN)
		goto again;
	if (sent < 0)
		tot_sent = sent;

	FUNC4(&map->active.out_mutex);
	FUNC7(sock);
	return tot_sent;
}