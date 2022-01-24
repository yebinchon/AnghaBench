#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_2__* ops; TYPE_1__* sk; } ;
struct connection {struct socket* sock; int /*<<< orphan*/  connect_action; int /*<<< orphan*/  rx_action; } ;
typedef  int /*<<< orphan*/  one ;
typedef  int /*<<< orphan*/  bufsize ;
struct TYPE_8__ {int /*<<< orphan*/  ci_tcp_port; } ;
struct TYPE_7__ {int /*<<< orphan*/  ss_family; } ;
struct TYPE_6__ {int (* listen ) (struct socket*,int) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_data_ready; struct connection* sk_user_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  IPPROTO_SCTP ; 
 int NEEDED_RMEM ; 
 int /*<<< orphan*/  SCTP_NODELAY ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SCTP ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUFFORCE ; 
 TYPE_4__ dlm_config ; 
 TYPE_3__** dlm_local_addr ; 
 int /*<<< orphan*/  init_net ; 
 int FUNC0 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  lowcomms_data_ready ; 
 struct connection* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  sctp_accept_from_sock ; 
 scalar_t__ FUNC4 (struct connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_connect_to_sock ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket**) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 
 int FUNC7 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(void)
{
	struct socket *sock = NULL;
	int result = -EINVAL;
	struct connection *con = FUNC2(0, GFP_NOFS);
	int bufsize = NEEDED_RMEM;
	int one = 1;

	if (!con)
		return -ENOMEM;

	FUNC1("Using SCTP for communications");

	result = FUNC5(&init_net, dlm_local_addr[0]->ss_family,
				  SOCK_STREAM, IPPROTO_SCTP, &sock);
	if (result < 0) {
		FUNC1("Can't create comms socket, check SCTP is loaded");
		goto out;
	}

	result = FUNC0(sock, SOL_SOCKET, SO_RCVBUFFORCE,
				 (char *)&bufsize, sizeof(bufsize));
	if (result)
		FUNC1("Error increasing buffer space on socket %d", result);

	result = FUNC0(sock, SOL_SCTP, SCTP_NODELAY, (char *)&one,
				   sizeof(one));
	if (result < 0)
		FUNC1("Could not set SCTP NODELAY error %d\n", result);

	FUNC8(&sock->sk->sk_callback_lock);
	/* Init con struct */
	sock->sk->sk_user_data = con;
	FUNC3(sock);
	con->sock = sock;
	con->sock->sk->sk_data_ready = lowcomms_data_ready;
	con->rx_action = sctp_accept_from_sock;
	con->connect_action = sctp_connect_to_sock;

	FUNC9(&sock->sk->sk_callback_lock);

	/* Bind to all addresses. */
	if (FUNC4(con, dlm_config.ci_tcp_port))
		goto create_delsock;

	result = sock->ops->listen(sock, 5);
	if (result < 0) {
		FUNC1("Can't set socket listening");
		goto create_delsock;
	}

	return 0;

create_delsock:
	FUNC6(sock);
	con->sock = NULL;
out:
	return result;
}