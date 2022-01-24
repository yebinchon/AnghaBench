#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {uintptr_t id; uintptr_t id_new; int evtchn; int /*<<< orphan*/  ref; } ;
struct TYPE_13__ {TYPE_2__ accept; } ;
struct xen_pvcalls_request {int req_id; TYPE_3__ u; int /*<<< orphan*/  cmd; } ;
struct socket {TYPE_6__* sk; } ;
struct TYPE_14__ {scalar_t__ status; int inflight_req_id; int /*<<< orphan*/  inflight_accept_req; int /*<<< orphan*/  flags; struct sock_mapping* accept_map; } ;
struct TYPE_11__ {int /*<<< orphan*/  ref; } ;
struct sock_mapping {TYPE_4__ passive; struct socket* sock; TYPE_1__ active; int /*<<< orphan*/  list; } ;
struct TYPE_18__ {int /*<<< orphan*/  req_prod_pvt; } ;
struct pvcalls_bedata {TYPE_5__* rsp; int /*<<< orphan*/  inflight_req; int /*<<< orphan*/  irq; int /*<<< orphan*/  socket_lock; TYPE_9__ ring; int /*<<< orphan*/  socket_mappings; } ;
struct TYPE_17__ {int /*<<< orphan*/  dev; } ;
struct TYPE_16__ {void* sk_send_head; } ;
struct TYPE_15__ {int req_id; int ret; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct sock_mapping*) ; 
 int /*<<< orphan*/  PF_INET ; 
 int FUNC1 (struct sock_mapping*) ; 
 int /*<<< orphan*/  PVCALLS_ACCEPT ; 
 int /*<<< orphan*/  PVCALLS_FLAG_ACCEPT_INFLIGHT ; 
 int PVCALLS_INVALID_ID ; 
 scalar_t__ PVCALLS_STATUS_LISTEN ; 
 int FUNC2 (int) ; 
 struct xen_pvcalls_request* FUNC3 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,int) ; 
 int SOCK_NONBLOCK ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (struct sock_mapping*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*) ; 
 int FUNC8 (struct sock_mapping*,int*) ; 
 struct pvcalls_bedata* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sock_mapping*) ; 
 int FUNC11 (struct pvcalls_bedata*,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock_mapping*) ; 
 struct sock_mapping* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 struct sock_mapping* FUNC16 (struct socket*) ; 
 int /*<<< orphan*/  FUNC17 (struct socket*) ; 
 TYPE_8__* pvcalls_front_dev ; 
 int /*<<< orphan*/  FUNC18 (struct pvcalls_bedata*,struct sock_mapping*) ; 
 int /*<<< orphan*/  pvcalls_proto ; 
 TYPE_6__* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

int FUNC27(struct socket *sock, struct socket *newsock, int flags)
{
	struct pvcalls_bedata *bedata;
	struct sock_mapping *map;
	struct sock_mapping *map2 = NULL;
	struct xen_pvcalls_request *req;
	int notify, req_id, ret, evtchn, nonblock;

	map = FUNC16(sock);
	if (FUNC0(map))
		return FUNC1(map);
	bedata = FUNC9(&pvcalls_front_dev->dev);

	if (map->passive.status != PVCALLS_STATUS_LISTEN) {
		FUNC17(sock);
		return -EINVAL;
	}

	nonblock = flags & SOCK_NONBLOCK;
	/*
	 * Backend only supports 1 inflight accept request, will return
	 * errors for the others
	 */
	if (FUNC24(PVCALLS_FLAG_ACCEPT_INFLIGHT,
			     (void *)&map->passive.flags)) {
		req_id = FUNC2(map->passive.inflight_req_id);
		if (req_id != PVCALLS_INVALID_ID &&
		    FUNC2(bedata->rsp[req_id].req_id) == req_id) {
			map2 = map->passive.accept_map;
			goto received;
		}
		if (nonblock) {
			FUNC17(sock);
			return -EAGAIN;
		}
		if (FUNC25(map->passive.inflight_accept_req,
			!FUNC24(PVCALLS_FLAG_ACCEPT_INFLIGHT,
					  (void *)&map->passive.flags))) {
			FUNC17(sock);
			return -EINTR;
		}
	}

	map2 = FUNC13(sizeof(*map2), GFP_KERNEL);
	if (map2 == NULL) {
		FUNC7(PVCALLS_FLAG_ACCEPT_INFLIGHT,
			  (void *)&map->passive.flags);
		FUNC17(sock);
		return -ENOMEM;
	}
	ret = FUNC6(map2);
	if (ret < 0) {
		FUNC7(PVCALLS_FLAG_ACCEPT_INFLIGHT,
				(void *)&map->passive.flags);
		FUNC12(map2);
		FUNC17(sock);
		return ret;
	}
	FUNC22(&bedata->socket_lock);
	ret = FUNC11(bedata, &req_id);
	if (ret < 0) {
		FUNC7(PVCALLS_FLAG_ACCEPT_INFLIGHT,
			  (void *)&map->passive.flags);
		FUNC23(&bedata->socket_lock);
		FUNC10(map2);
		FUNC12(map2);
		FUNC17(sock);
		return ret;
	}

	ret = FUNC8(map2, &evtchn);
	if (ret < 0) {
		FUNC10(map2);
		FUNC12(map2);
		FUNC7(PVCALLS_FLAG_ACCEPT_INFLIGHT,
			  (void *)&map->passive.flags);
		FUNC23(&bedata->socket_lock);
		FUNC17(sock);
		return ret;
	}
	FUNC14(&map2->list, &bedata->socket_mappings);

	req = FUNC3(&bedata->ring, req_id);
	req->req_id = req_id;
	req->cmd = PVCALLS_ACCEPT;
	req->u.accept.id = (uintptr_t) map;
	req->u.accept.ref = map2->active.ref;
	req->u.accept.id_new = (uintptr_t) map2;
	req->u.accept.evtchn = evtchn;
	map->passive.accept_map = map2;

	bedata->ring.req_prod_pvt++;
	FUNC4(&bedata->ring, notify);
	FUNC23(&bedata->socket_lock);
	if (notify)
		FUNC15(bedata->irq);
	/* We could check if we have received a response before returning. */
	if (nonblock) {
		FUNC5(map->passive.inflight_req_id, req_id);
		FUNC17(sock);
		return -EAGAIN;
	}

	if (FUNC25(bedata->inflight_req,
		FUNC2(bedata->rsp[req_id].req_id) == req_id)) {
		FUNC17(sock);
		return -EINTR;
	}
	/* read req_id, then the content */
	FUNC20();

received:
	map2->sock = newsock;
	newsock->sk = FUNC19(FUNC21(sock->sk), PF_INET, GFP_KERNEL, &pvcalls_proto, false);
	if (!newsock->sk) {
		bedata->rsp[req_id].req_id = PVCALLS_INVALID_ID;
		map->passive.inflight_req_id = PVCALLS_INVALID_ID;
		FUNC7(PVCALLS_FLAG_ACCEPT_INFLIGHT,
			  (void *)&map->passive.flags);
		FUNC18(bedata, map2);
		FUNC17(sock);
		return -ENOMEM;
	}
	newsock->sk->sk_send_head = (void *)map2;

	ret = bedata->rsp[req_id].ret;
	bedata->rsp[req_id].req_id = PVCALLS_INVALID_ID;
	map->passive.inflight_req_id = PVCALLS_INVALID_ID;

	FUNC7(PVCALLS_FLAG_ACCEPT_INFLIGHT, (void *)&map->passive.flags);
	FUNC26(&map->passive.inflight_accept_req);

	FUNC17(sock);
	return ret;
}