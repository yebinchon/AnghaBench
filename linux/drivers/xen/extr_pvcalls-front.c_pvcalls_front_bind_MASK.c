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
struct TYPE_8__ {uintptr_t id; int len; int /*<<< orphan*/  addr; } ;
struct TYPE_9__ {TYPE_1__ bind; } ;
struct xen_pvcalls_request {int req_id; TYPE_2__ u; int /*<<< orphan*/  cmd; } ;
struct socket {scalar_t__ type; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_11__ {int /*<<< orphan*/  status; int /*<<< orphan*/  inflight_accept_req; } ;
struct sock_mapping {int active_socket; TYPE_4__ passive; struct socket* sock; } ;
struct TYPE_13__ {int /*<<< orphan*/  req_prod_pvt; } ;
struct pvcalls_bedata {TYPE_3__* rsp; int /*<<< orphan*/  inflight_req; int /*<<< orphan*/  irq; int /*<<< orphan*/  socket_lock; TYPE_6__ ring; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int ret; int /*<<< orphan*/  req_id; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct sock_mapping*) ; 
 int FUNC1 (struct sock_mapping*) ; 
 int /*<<< orphan*/  PVCALLS_BIND ; 
 int /*<<< orphan*/  PVCALLS_INVALID_ID ; 
 int /*<<< orphan*/  PVCALLS_STATUS_BIND ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct xen_pvcalls_request* FUNC3 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int) ; 
 scalar_t__ SOCK_STREAM ; 
 struct pvcalls_bedata* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct pvcalls_bedata*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct sock_mapping* FUNC10 (struct socket*) ; 
 int /*<<< orphan*/  FUNC11 (struct socket*) ; 
 TYPE_5__* pvcalls_front_dev ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

int FUNC16(struct socket *sock, struct sockaddr *addr, int addr_len)
{
	struct pvcalls_bedata *bedata;
	struct sock_mapping *map = NULL;
	struct xen_pvcalls_request *req;
	int notify, req_id, ret;

	if (addr->sa_family != AF_INET || sock->type != SOCK_STREAM)
		return -EOPNOTSUPP;

	map = FUNC10(sock);
	if (FUNC0(map))
		return FUNC1(map);
	bedata = FUNC5(&pvcalls_front_dev->dev);

	FUNC13(&bedata->socket_lock);
	ret = FUNC6(bedata, &req_id);
	if (ret < 0) {
		FUNC14(&bedata->socket_lock);
		FUNC11(sock);
		return ret;
	}
	req = FUNC3(&bedata->ring, req_id);
	req->req_id = req_id;
	map->sock = sock;
	req->cmd = PVCALLS_BIND;
	req->u.bind.id = (uintptr_t)map;
	FUNC8(req->u.bind.addr, addr, sizeof(*addr));
	req->u.bind.len = addr_len;

	FUNC7(&map->passive.inflight_accept_req);

	map->active_socket = false;

	bedata->ring.req_prod_pvt++;
	FUNC4(&bedata->ring, notify);
	FUNC14(&bedata->socket_lock);
	if (notify)
		FUNC9(bedata->irq);

	FUNC15(bedata->inflight_req,
		   FUNC2(bedata->rsp[req_id].req_id) == req_id);

	/* read req_id, then the content */
	FUNC12();
	ret = bedata->rsp[req_id].ret;
	bedata->rsp[req_id].req_id = PVCALLS_INVALID_ID;

	map->passive.status = PVCALLS_STATUS_BIND;
	FUNC11(sock);
	return 0;
}