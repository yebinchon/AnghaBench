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
struct connection {int /*<<< orphan*/  sock_mutex; struct connection* othercon; TYPE_2__* sock; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__* sk; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/ * sk_user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_CLOSE ; 
 int /*<<< orphan*/  CF_READ_PENDING ; 
 int /*<<< orphan*/  CF_WRITE_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct connection *con, bool and_other)
{
	FUNC0(&con->sock_mutex);
	FUNC2(CF_CLOSE, &con->flags);
	FUNC2(CF_READ_PENDING, &con->flags);
	FUNC2(CF_WRITE_PENDING, &con->flags);
	if (con->sock && con->sock->sk) {
		FUNC3(&con->sock->sk->sk_callback_lock);
		con->sock->sk->sk_user_data = NULL;
		FUNC4(&con->sock->sk->sk_callback_lock);
	}
	if (con->othercon && and_other)
		FUNC5(con->othercon, false);
	FUNC1(&con->sock_mutex);
}