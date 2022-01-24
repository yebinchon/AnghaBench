#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {uintptr_t id; int len; int flags; int evtchn; int /*<<< orphan*/  addr; int /*<<< orphan*/  ref; } ;
struct TYPE_10__ {TYPE_2__ connect; } ;
struct xen_pvcalls_request {int req_id; TYPE_3__ u; int /*<<< orphan*/  cmd; } ;
struct socket {scalar_t__ type; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_8__ {int /*<<< orphan*/  ref; } ;
struct sock_mapping {struct socket* sock; TYPE_1__ active; } ;
struct TYPE_13__ {int /*<<< orphan*/  req_prod_pvt; } ;
struct pvcalls_bedata {TYPE_4__* rsp; int /*<<< orphan*/  inflight_req; int /*<<< orphan*/  irq; int /*<<< orphan*/  socket_lock; TYPE_6__ ring; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int ret; int /*<<< orphan*/  req_id; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct sock_mapping*) ; 
 int FUNC1 (struct sock_mapping*) ; 
 int /*<<< orphan*/  PVCALLS_CONNECT ; 
 int /*<<< orphan*/  PVCALLS_INVALID_ID ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct xen_pvcalls_request* FUNC3 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int) ; 
 scalar_t__ SOCK_STREAM ; 
 int FUNC5 (struct sock_mapping*) ; 
 int FUNC6 (struct sock_mapping*,int*) ; 
 struct pvcalls_bedata* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sock_mapping*) ; 
 int FUNC9 (struct pvcalls_bedata*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct sock_mapping* FUNC12 (struct socket*) ; 
 int /*<<< orphan*/  FUNC13 (struct socket*) ; 
 TYPE_5__* pvcalls_front_dev ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 

int FUNC18(struct socket *sock, struct sockaddr *addr,
				int addr_len, int flags)
{
	struct pvcalls_bedata *bedata;
	struct sock_mapping *map = NULL;
	struct xen_pvcalls_request *req;
	int notify, req_id, ret, evtchn;

	if (addr->sa_family != AF_INET || sock->type != SOCK_STREAM)
		return -EOPNOTSUPP;

	map = FUNC12(sock);
	if (FUNC0(map))
		return FUNC1(map);

	bedata = FUNC7(&pvcalls_front_dev->dev);
	ret = FUNC5(map);
	if (ret < 0) {
		FUNC13(sock);
		return ret;
	}

	FUNC15(&bedata->socket_lock);
	ret = FUNC9(bedata, &req_id);
	if (ret < 0) {
		FUNC16(&bedata->socket_lock);
		FUNC8(map);
		FUNC13(sock);
		return ret;
	}
	ret = FUNC6(map, &evtchn);
	if (ret < 0) {
		FUNC16(&bedata->socket_lock);
		FUNC8(map);
		FUNC13(sock);
		return ret;
	}

	req = FUNC3(&bedata->ring, req_id);
	req->req_id = req_id;
	req->cmd = PVCALLS_CONNECT;
	req->u.connect.id = (uintptr_t)map;
	req->u.connect.len = addr_len;
	req->u.connect.flags = flags;
	req->u.connect.ref = map->active.ref;
	req->u.connect.evtchn = evtchn;
	FUNC10(req->u.connect.addr, addr, sizeof(*addr));

	map->sock = sock;

	bedata->ring.req_prod_pvt++;
	FUNC4(&bedata->ring, notify);
	FUNC16(&bedata->socket_lock);

	if (notify)
		FUNC11(bedata->irq);

	FUNC17(bedata->inflight_req,
		   FUNC2(bedata->rsp[req_id].req_id) == req_id);

	/* read req_id, then the content */
	FUNC14();
	ret = bedata->rsp[req_id].ret;
	bedata->rsp[req_id].req_id = PVCALLS_INVALID_ID;
	FUNC13(sock);
	return ret;
}