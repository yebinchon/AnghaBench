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
struct socket {TYPE_1__* ops; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct connection {int nodeid; int /*<<< orphan*/  sock_mutex; int /*<<< orphan*/  rwork; int /*<<< orphan*/  flags; void* rx_action; struct connection* othercon; scalar_t__ sock; int /*<<< orphan*/  swork; int /*<<< orphan*/  writequeue_lock; int /*<<< orphan*/  writequeue; } ;
typedef  int /*<<< orphan*/  peeraddr ;
struct TYPE_2__ {int (* getname ) (struct socket*,struct sockaddr*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CF_IS_OTHERCON ; 
 int /*<<< orphan*/  CF_READ_PENDING ; 
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int EAGAIN ; 
 int ECONNABORTED ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,struct connection*) ; 
 scalar_t__ FUNC3 (struct sockaddr_storage*,int*) ; 
 int /*<<< orphan*/  con_cache ; 
 int /*<<< orphan*/  connections_lock ; 
 int /*<<< orphan*/  dlm_allow_conn ; 
 int FUNC4 (scalar_t__,struct socket**,int /*<<< orphan*/ ) ; 
 struct connection* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_storage*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct connection* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int /*<<< orphan*/  process_recv_sockets ; 
 int /*<<< orphan*/  process_send_sockets ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* receive_from_sock ; 
 int /*<<< orphan*/  recv_workqueue ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct socket*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (struct socket*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct connection *con)
{
	int result;
	struct sockaddr_storage peeraddr;
	struct socket *newsock;
	int len;
	int nodeid;
	struct connection *newcon;
	struct connection *addcon;

	FUNC10(&connections_lock);
	if (!dlm_allow_conn) {
		FUNC12(&connections_lock);
		return -1;
	}
	FUNC12(&connections_lock);

	FUNC11(&con->sock_mutex, 0);

	if (!con->sock) {
		FUNC12(&con->sock_mutex);
		return -ENOTCONN;
	}

	result = FUNC4(con->sock, &newsock, O_NONBLOCK);
	if (result < 0)
		goto accept_err;

	/* Get the connected socket's peer */
	FUNC8(&peeraddr, 0, sizeof(peeraddr));
	len = newsock->ops->getname(newsock, (struct sockaddr *)&peeraddr, 2);
	if (len < 0) {
		result = -ECONNABORTED;
		goto accept_err;
	}

	/* Get the new node's NODEID */
	FUNC7(&peeraddr, 0, &len);
	if (FUNC3(&peeraddr, &nodeid)) {
		unsigned char *b=(unsigned char *)&peeraddr;
		FUNC6("connect from non cluster node");
		FUNC14("ss: ", DUMP_PREFIX_NONE, 
				     b, sizeof(struct sockaddr_storage));
		FUNC18(newsock);
		FUNC12(&con->sock_mutex);
		return -1;
	}

	FUNC6("got connection from %d", nodeid);

	/*  Check to see if we already have a connection to this node. This
	 *  could happen if the two nodes initiate a connection at roughly
	 *  the same time and the connections cross on the wire.
	 *  In this case we store the incoming one in "othercon"
	 */
	newcon = FUNC13(nodeid, GFP_NOFS);
	if (!newcon) {
		result = -ENOMEM;
		goto accept_err;
	}
	FUNC11(&newcon->sock_mutex, 1);
	if (newcon->sock) {
		struct connection *othercon = newcon->othercon;

		if (!othercon) {
			othercon = FUNC5(con_cache, GFP_NOFS);
			if (!othercon) {
				FUNC6("failed to allocate incoming socket");
				FUNC12(&newcon->sock_mutex);
				result = -ENOMEM;
				goto accept_err;
			}
			othercon->nodeid = nodeid;
			othercon->rx_action = receive_from_sock;
			FUNC9(&othercon->sock_mutex);
			FUNC0(&othercon->writequeue);
			FUNC19(&othercon->writequeue_lock);
			FUNC1(&othercon->swork, process_send_sockets);
			FUNC1(&othercon->rwork, process_recv_sockets);
			FUNC17(CF_IS_OTHERCON, &othercon->flags);
		}
		FUNC11(&othercon->sock_mutex, 2);
		if (!othercon->sock) {
			newcon->othercon = othercon;
			FUNC2(newsock, othercon);
			addcon = othercon;
			FUNC12(&othercon->sock_mutex);
		}
		else {
			FUNC15("Extra connection from node %d attempted\n", nodeid);
			result = -EAGAIN;
			FUNC12(&othercon->sock_mutex);
			FUNC12(&newcon->sock_mutex);
			goto accept_err;
		}
	}
	else {
		newcon->rx_action = receive_from_sock;
		/* accept copies the sk after we've saved the callbacks, so we
		   don't want to save them a second time or comm errors will
		   result in calling sk_error_report recursively. */
		FUNC2(newsock, newcon);
		addcon = newcon;
	}

	FUNC12(&newcon->sock_mutex);

	/*
	 * Add it to the active queue in case we got data
	 * between processing the accept adding the socket
	 * to the read_sockets list
	 */
	if (!FUNC21(CF_READ_PENDING, &addcon->flags))
		FUNC16(recv_workqueue, &addcon->rwork);
	FUNC12(&con->sock_mutex);

	return 0;

accept_err:
	FUNC12(&con->sock_mutex);
	if (newsock)
		FUNC18(newsock);

	if (result != -EAGAIN)
		FUNC6("error accepting connection from node: %d", result);
	return result;
}