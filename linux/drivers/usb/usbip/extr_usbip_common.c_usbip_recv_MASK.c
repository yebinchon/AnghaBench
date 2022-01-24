#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_1__* sk; } ;
struct msghdr {int /*<<< orphan*/  msg_iter; int /*<<< orphan*/  msg_flags; } ;
struct kvec {void* iov_base; int iov_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  comm; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk_allocation; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int /*<<< orphan*/  MSG_WAITALL ; 
 int /*<<< orphan*/  READ ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kvec*,int,int) ; 
 scalar_t__ FUNC2 (struct msghdr*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (struct socket*,struct msghdr*,int /*<<< orphan*/ ) ; 
 scalar_t__ usbip_dbg_flag_xmit ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int) ; 

int FUNC7(struct socket *sock, void *buf, int size)
{
	int result;
	struct kvec iov = {.iov_base = buf, .iov_len = size};
	struct msghdr msg = {.msg_flags = MSG_NOSIGNAL};
	int total = 0;

	if (!sock || !buf || !size)
		return -EINVAL;

	FUNC1(&msg.msg_iter, READ, &iov, 1, size);

	FUNC5("enter\n");

	do {
		sock->sk->sk_allocation = GFP_NOIO;

		result = FUNC4(sock, &msg, MSG_WAITALL);
		if (result <= 0)
			goto err;

		total += result;
	} while (FUNC2(&msg));

	if (usbip_dbg_flag_xmit) {
		if (!FUNC0())
			FUNC3("%-10s:", current->comm);
		else
			FUNC3("interrupt  :");

		FUNC3("receiving....\n");
		FUNC6(buf, size);
		FUNC3("received, osize %d ret %d size %zd total %d\n",
			 size, result, FUNC2(&msg), total);
	}

	return total;

err:
	return result;
}