#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {uintptr_t id; } ;
struct TYPE_13__ {TYPE_2__ release; } ;
struct xen_pvcalls_request {int req_id; TYPE_3__ u; int /*<<< orphan*/  cmd; } ;
struct socket {TYPE_1__* sk; } ;
struct TYPE_16__ {struct sock_mapping* accept_map; int /*<<< orphan*/  inflight_req_id; int /*<<< orphan*/  inflight_accept_req; } ;
struct TYPE_15__ {int /*<<< orphan*/  inflight_conn_req; TYPE_4__* ring; } ;
struct sock_mapping {TYPE_6__ passive; int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; TYPE_5__ active; scalar_t__ active_socket; } ;
struct TYPE_19__ {int /*<<< orphan*/  req_prod_pvt; } ;
struct pvcalls_bedata {TYPE_7__* rsp; int /*<<< orphan*/  socket_lock; int /*<<< orphan*/  inflight_req; int /*<<< orphan*/  irq; TYPE_9__ ring; } ;
struct TYPE_18__ {int /*<<< orphan*/  dev; } ;
struct TYPE_17__ {int /*<<< orphan*/  req_id; } ;
struct TYPE_14__ {int /*<<< orphan*/  in_error; } ;
struct TYPE_11__ {int /*<<< orphan*/ * sk_send_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int EIO ; 
 int /*<<< orphan*/  ENOTCONN ; 
 scalar_t__ FUNC0 (struct sock_mapping*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock_mapping*) ; 
 scalar_t__ PVCALLS_INVALID_ID ; 
 int /*<<< orphan*/  PVCALLS_RELEASE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct xen_pvcalls_request* FUNC3 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct pvcalls_bedata* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct pvcalls_bedata*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock_mapping*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct sock_mapping* FUNC13 (struct socket*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct socket*) ; 
 TYPE_8__* pvcalls_front_dev ; 
 int /*<<< orphan*/  FUNC16 (struct pvcalls_bedata*,struct sock_mapping*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

int FUNC22(struct socket *sock)
{
	struct pvcalls_bedata *bedata;
	struct sock_mapping *map;
	int req_id, notify, ret;
	struct xen_pvcalls_request *req;

	if (sock->sk == NULL)
		return 0;

	map = FUNC13(sock);
	if (FUNC0(map)) {
		if (FUNC1(map) == -ENOTCONN)
			return -EIO;
		else
			return 0;
	}
	bedata = FUNC8(&pvcalls_front_dev->dev);

	FUNC17(&bedata->socket_lock);
	ret = FUNC9(bedata, &req_id);
	if (ret < 0) {
		FUNC18(&bedata->socket_lock);
		FUNC15(sock);
		return ret;
	}
	sock->sk->sk_send_head = NULL;

	req = FUNC3(&bedata->ring, req_id);
	req->req_id = req_id;
	req->cmd = PVCALLS_RELEASE;
	req->u.release.id = (uintptr_t)map;

	bedata->ring.req_prod_pvt++;
	FUNC4(&bedata->ring, notify);
	FUNC18(&bedata->socket_lock);
	if (notify)
		FUNC12(bedata->irq);

	FUNC19(bedata->inflight_req,
		   FUNC2(bedata->rsp[req_id].req_id) == req_id);

	if (map->active_socket) {
		/*
		 * Set in_error and wake up inflight_conn_req to force
		 * recvmsg waiters to exit.
		 */
		map->active.ring->in_error = -EBADF;
		FUNC21(&map->active.inflight_conn_req);

		/*
		 * We need to make sure that sendmsg/recvmsg on this socket have
		 * not started before we've cleared sk_send_head here. The
		 * easiest way to guarantee this is to see that no pvcalls
		 * (other than us) is in progress on this socket.
		 */
		while (FUNC6(&map->refcount) > 1)
			FUNC7();

		FUNC16(bedata, map);
	} else {
		FUNC20(&bedata->inflight_req);
		FUNC20(&map->passive.inflight_accept_req);

		while (FUNC6(&map->refcount) > 1)
			FUNC7();

		FUNC17(&bedata->socket_lock);
		FUNC11(&map->list);
		FUNC18(&bedata->socket_lock);
		if (FUNC2(map->passive.inflight_req_id) != PVCALLS_INVALID_ID &&
			FUNC2(map->passive.inflight_req_id) != 0) {
			FUNC16(bedata,
					       map->passive.accept_map);
		}
		FUNC10(map);
	}
	FUNC5(bedata->rsp[req_id].req_id, PVCALLS_INVALID_ID);

	FUNC14();
	return 0;
}