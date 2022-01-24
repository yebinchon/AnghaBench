#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tv ;
struct timeval {int tv_sec; int /*<<< orphan*/  tv_usec; } ;
struct socket {TYPE_1__* ops; } ;
struct sockaddr_storage {int tv_sec; int /*<<< orphan*/  tv_usec; } ;
struct sockaddr {int dummy; } ;
struct connection {scalar_t__ nodeid; void (* connect_action ) (struct connection*) ;int /*<<< orphan*/  sock_mutex; int /*<<< orphan*/  retries; int /*<<< orphan*/ * sock; int /*<<< orphan*/  rx_action; } ;
typedef  int /*<<< orphan*/  one ;
typedef  int /*<<< orphan*/  daddr ;
struct TYPE_6__ {int /*<<< orphan*/  ci_tcp_port; } ;
struct TYPE_5__ {int /*<<< orphan*/  ss_family; } ;
struct TYPE_4__ {int (* connect ) (struct socket*,struct sockaddr*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENETDOWN ; 
 int ENETUNREACH ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  IPPROTO_SCTP ; 
 scalar_t__ MAX_CONNECT_RETRIES ; 
 int /*<<< orphan*/  SCTP_NODELAY ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SCTP ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_SNDTIMEO_OLD ; 
 int /*<<< orphan*/  FUNC0 (struct socket*,struct connection*) ; 
 TYPE_3__ dlm_config ; 
 TYPE_2__** dlm_local_addr ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (scalar_t__,struct timeval*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  receive_from_sock ; 
 scalar_t__ FUNC10 (struct connection*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket**) ; 
 int /*<<< orphan*/  FUNC12 (struct socket*) ; 
 int FUNC13 (struct socket*,struct sockaddr*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct connection *con)
{
	struct sockaddr_storage daddr;
	int one = 1;
	int result;
	int addr_len;
	struct socket *sock;
	struct timeval tv = { .tv_sec = 5, .tv_usec = 0 };

	if (con->nodeid == 0) {
		FUNC2("attempt to connect sock 0 foiled");
		return;
	}

	FUNC7(&con->sock_mutex);

	/* Some odd races can cause double-connects, ignore them */
	if (con->retries++ > MAX_CONNECT_RETRIES)
		goto out;

	if (con->sock) {
		FUNC2("node %d already connected.", con->nodeid);
		goto out;
	}

	FUNC5(&daddr, 0, sizeof(daddr));
	result = FUNC9(con->nodeid, &daddr, NULL, true);
	if (result < 0) {
		FUNC2("no address for nodeid %d", con->nodeid);
		goto out;
	}

	/* Create a socket to communicate with */
	result = FUNC11(&init_net, dlm_local_addr[0]->ss_family,
				  SOCK_STREAM, IPPROTO_SCTP, &sock);
	if (result < 0)
		goto socket_err;

	con->rx_action = receive_from_sock;
	con->connect_action = sctp_connect_to_sock;
	FUNC0(sock, con);

	/* Bind to all addresses. */
	if (FUNC10(con, 0))
		goto bind_err;

	FUNC4(&daddr, dlm_config.ci_tcp_port, &addr_len);

	FUNC2("connecting to %d", con->nodeid);

	/* Turn off Nagle's algorithm */
	FUNC1(sock, SOL_SCTP, SCTP_NODELAY, (char *)&one,
			  sizeof(one));

	/*
	 * Make sock->ops->connect() function return in specified time,
	 * since O_NONBLOCK argument in connect() function does not work here,
	 * then, we should restore the default value of this attribute.
	 */
	FUNC1(sock, SOL_SOCKET, SO_SNDTIMEO_OLD, (char *)&tv,
			  sizeof(tv));
	result = sock->ops->connect(sock, (struct sockaddr *)&daddr, addr_len,
				   0);
	FUNC5(&tv, 0, sizeof(tv));
	FUNC1(sock, SOL_SOCKET, SO_SNDTIMEO_OLD, (char *)&tv,
			  sizeof(tv));

	if (result == -EINPROGRESS)
		result = 0;
	if (result == 0)
		goto out;

bind_err:
	con->sock = NULL;
	FUNC12(sock);

socket_err:
	/*
	 * Some errors are fatal and this list might need adjusting. For other
	 * errors we try again until the max number of retries is reached.
	 */
	if (result != -EHOSTUNREACH &&
	    result != -ENETUNREACH &&
	    result != -ENETDOWN &&
	    result != -EINVAL &&
	    result != -EPROTONOSUPPORT) {
		FUNC2("connect %d try %d error %d", con->nodeid,
			  con->retries, result);
		FUNC8(&con->sock_mutex);
		FUNC6(1000);
		FUNC3(con);
		return;
	}

out:
	FUNC8(&con->sock_mutex);
}