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
struct socket {TYPE_2__* sk; TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk_receive_queue; } ;
struct TYPE_3__ {int (* peek_len ) (struct socket*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct socket*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct socket *sock)
{
	if (FUNC2(!sock))
		return 0;

	if (sock->ops->peek_len)
		return sock->ops->peek_len(sock);

	return FUNC0(&sock->sk->sk_receive_queue);
}