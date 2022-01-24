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
struct socket {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
struct sctp_prim {int /*<<< orphan*/  ssp_addr; } ;
struct connection {int nodeid; int /*<<< orphan*/  sock_mutex; int /*<<< orphan*/  rwork; int /*<<< orphan*/  flags; void* rx_action; struct connection* othercon; scalar_t__ sock; int /*<<< orphan*/  swork; int /*<<< orphan*/  writequeue_lock; int /*<<< orphan*/  writequeue; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_IS_OTHERCON ; 
 int /*<<< orphan*/  CF_READ_PENDING ; 
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_SCTP ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  SCTP_PRIMARY_ADDR ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,struct connection*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  con_cache ; 
 int /*<<< orphan*/  connections_lock ; 
 int /*<<< orphan*/  dlm_allow_conn ; 
 int FUNC4 (scalar_t__,struct socket**,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 struct connection* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_prim*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct connection* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 int /*<<< orphan*/  process_recv_sockets ; 
 int /*<<< orphan*/  process_send_sockets ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* receive_from_sock ; 
 int /*<<< orphan*/  recv_workqueue ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct socket*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct connection *con)
{
	/* Check that the new node is in the lockspace */
	struct sctp_prim prim;
	int nodeid;
	int prim_len, ret;
	int addr_len;
	struct connection *newcon;
	struct connection *addcon;
	struct socket *newsock;

	FUNC11(&connections_lock);
	if (!dlm_allow_conn) {
		FUNC13(&connections_lock);
		return -1;
	}
	FUNC13(&connections_lock);

	FUNC12(&con->sock_mutex, 0);

	ret = FUNC4(con->sock, &newsock, O_NONBLOCK);
	if (ret < 0)
		goto accept_err;

	FUNC9(&prim, 0, sizeof(struct sctp_prim));
	prim_len = sizeof(struct sctp_prim);

	ret = FUNC5(newsock, IPPROTO_SCTP, SCTP_PRIMARY_ADDR,
				(char *)&prim, &prim_len);
	if (ret < 0) {
		FUNC7("getsockopt/sctp_primary_addr failed: %d", ret);
		goto accept_err;
	}

	FUNC8(&prim.ssp_addr, 0, &addr_len);
	ret = FUNC3(&prim.ssp_addr, &nodeid);
	if (ret) {
		unsigned char *b = (unsigned char *)&prim.ssp_addr;

		FUNC7("reject connect from unknown addr");
		FUNC15("ss: ", DUMP_PREFIX_NONE,
				     b, sizeof(struct sockaddr_storage));
		goto accept_err;
	}

	newcon = FUNC14(nodeid, GFP_NOFS);
	if (!newcon) {
		ret = -ENOMEM;
		goto accept_err;
	}

	FUNC12(&newcon->sock_mutex, 1);

	if (newcon->sock) {
		struct connection *othercon = newcon->othercon;

		if (!othercon) {
			othercon = FUNC6(con_cache, GFP_NOFS);
			if (!othercon) {
				FUNC7("failed to allocate incoming socket");
				FUNC13(&newcon->sock_mutex);
				ret = -ENOMEM;
				goto accept_err;
			}
			othercon->nodeid = nodeid;
			othercon->rx_action = receive_from_sock;
			FUNC10(&othercon->sock_mutex);
			FUNC0(&othercon->writequeue);
			FUNC20(&othercon->writequeue_lock);
			FUNC1(&othercon->swork, process_send_sockets);
			FUNC1(&othercon->rwork, process_recv_sockets);
			FUNC18(CF_IS_OTHERCON, &othercon->flags);
		}
		FUNC12(&othercon->sock_mutex, 2);
		if (!othercon->sock) {
			newcon->othercon = othercon;
			FUNC2(newsock, othercon);
			addcon = othercon;
			FUNC13(&othercon->sock_mutex);
		} else {
			FUNC16("Extra connection from node %d attempted\n", nodeid);
			ret = -EAGAIN;
			FUNC13(&othercon->sock_mutex);
			FUNC13(&newcon->sock_mutex);
			goto accept_err;
		}
	} else {
		newcon->rx_action = receive_from_sock;
		FUNC2(newsock, newcon);
		addcon = newcon;
	}

	FUNC7("connected to %d", nodeid);

	FUNC13(&newcon->sock_mutex);

	/*
	 * Add it to the active queue in case we got data
	 * between processing the accept adding the socket
	 * to the read_sockets list
	 */
	if (!FUNC21(CF_READ_PENDING, &addcon->flags))
		FUNC17(recv_workqueue, &addcon->rwork);
	FUNC13(&con->sock_mutex);

	return 0;

accept_err:
	FUNC13(&con->sock_mutex);
	if (newsock)
		FUNC19(newsock);
	if (ret != -EAGAIN)
		FUNC7("error accepting connection from node: %d", ret);

	return ret;
}