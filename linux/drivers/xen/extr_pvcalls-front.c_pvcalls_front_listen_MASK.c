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
struct TYPE_8__ {uintptr_t id; int backlog; } ;
struct TYPE_9__ {TYPE_1__ listen; } ;
struct xen_pvcalls_request {int req_id; TYPE_2__ u; int /*<<< orphan*/  cmd; } ;
struct socket {int dummy; } ;
struct TYPE_11__ {scalar_t__ status; } ;
struct sock_mapping {TYPE_4__ passive; } ;
struct TYPE_13__ {int /*<<< orphan*/  req_prod_pvt; } ;
struct pvcalls_bedata {TYPE_3__* rsp; int /*<<< orphan*/  inflight_req; int /*<<< orphan*/  irq; int /*<<< orphan*/  socket_lock; TYPE_6__ ring; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int ret; int /*<<< orphan*/  req_id; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct sock_mapping*) ; 
 int FUNC1 (struct sock_mapping*) ; 
 int /*<<< orphan*/  PVCALLS_INVALID_ID ; 
 int /*<<< orphan*/  PVCALLS_LISTEN ; 
 scalar_t__ PVCALLS_STATUS_BIND ; 
 scalar_t__ PVCALLS_STATUS_LISTEN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct xen_pvcalls_request* FUNC3 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int) ; 
 struct pvcalls_bedata* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct pvcalls_bedata*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct sock_mapping* FUNC8 (struct socket*) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 
 TYPE_5__* pvcalls_front_dev ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 

int FUNC14(struct socket *sock, int backlog)
{
	struct pvcalls_bedata *bedata;
	struct sock_mapping *map;
	struct xen_pvcalls_request *req;
	int notify, req_id, ret;

	map = FUNC8(sock);
	if (FUNC0(map))
		return FUNC1(map);
	bedata = FUNC5(&pvcalls_front_dev->dev);

	if (map->passive.status != PVCALLS_STATUS_BIND) {
		FUNC9(sock);
		return -EOPNOTSUPP;
	}

	FUNC11(&bedata->socket_lock);
	ret = FUNC6(bedata, &req_id);
	if (ret < 0) {
		FUNC12(&bedata->socket_lock);
		FUNC9(sock);
		return ret;
	}
	req = FUNC3(&bedata->ring, req_id);
	req->req_id = req_id;
	req->cmd = PVCALLS_LISTEN;
	req->u.listen.id = (uintptr_t) map;
	req->u.listen.backlog = backlog;

	bedata->ring.req_prod_pvt++;
	FUNC4(&bedata->ring, notify);
	FUNC12(&bedata->socket_lock);
	if (notify)
		FUNC7(bedata->irq);

	FUNC13(bedata->inflight_req,
		   FUNC2(bedata->rsp[req_id].req_id) == req_id);

	/* read req_id, then the content */
	FUNC10();
	ret = bedata->rsp[req_id].ret;
	bedata->rsp[req_id].req_id = PVCALLS_INVALID_ID;

	map->passive.status = PVCALLS_STATUS_LISTEN;
	FUNC9(sock);
	return ret;
}