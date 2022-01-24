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
struct TYPE_9__ {uintptr_t id; int /*<<< orphan*/  protocol; scalar_t__ type; int /*<<< orphan*/  domain; } ;
struct TYPE_10__ {TYPE_2__ socket; } ;
struct xen_pvcalls_request {int req_id; TYPE_3__ u; int /*<<< orphan*/  cmd; } ;
struct socket {scalar_t__ type; TYPE_1__* sk; } ;
struct sock_mapping {int /*<<< orphan*/  list; } ;
struct TYPE_13__ {int /*<<< orphan*/  req_prod_pvt; } ;
struct pvcalls_bedata {TYPE_4__* rsp; int /*<<< orphan*/  inflight_req; int /*<<< orphan*/  irq; int /*<<< orphan*/  socket_lock; TYPE_6__ ring; int /*<<< orphan*/  socket_mappings; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int ret; int /*<<< orphan*/  req_id; } ;
struct TYPE_8__ {void* sk_send_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EACCES ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  PVCALLS_INVALID_ID ; 
 int /*<<< orphan*/  PVCALLS_SOCKET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct xen_pvcalls_request* FUNC1 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int) ; 
 scalar_t__ SOCK_STREAM ; 
 struct pvcalls_bedata* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pvcalls_bedata*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock_mapping*) ; 
 struct sock_mapping* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_5__* pvcalls_front_dev ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 

int FUNC15(struct socket *sock)
{
	struct pvcalls_bedata *bedata;
	struct sock_mapping *map = NULL;
	struct xen_pvcalls_request *req;
	int notify, req_id, ret;

	/*
	 * PVCalls only supports domain AF_INET,
	 * type SOCK_STREAM and protocol 0 sockets for now.
	 *
	 * Check socket type here, AF_INET and protocol checks are done
	 * by the caller.
	 */
	if (sock->type != SOCK_STREAM)
		return -EOPNOTSUPP;

	FUNC9();
	if (!pvcalls_front_dev) {
		FUNC10();
		return -EACCES;
	}
	bedata = FUNC3(&pvcalls_front_dev->dev);

	map = FUNC6(sizeof(*map), GFP_KERNEL);
	if (map == NULL) {
		FUNC10();
		return -ENOMEM;
	}

	FUNC12(&bedata->socket_lock);

	ret = FUNC4(bedata, &req_id);
	if (ret < 0) {
		FUNC5(map);
		FUNC13(&bedata->socket_lock);
		FUNC10();
		return ret;
	}

	/*
	 * sock->sk->sk_send_head is not used for ip sockets: reuse the
	 * field to store a pointer to the struct sock_mapping
	 * corresponding to the socket. This way, we can easily get the
	 * struct sock_mapping from the struct socket.
	 */
	sock->sk->sk_send_head = (void *)map;
	FUNC7(&map->list, &bedata->socket_mappings);

	req = FUNC1(&bedata->ring, req_id);
	req->req_id = req_id;
	req->cmd = PVCALLS_SOCKET;
	req->u.socket.id = (uintptr_t) map;
	req->u.socket.domain = AF_INET;
	req->u.socket.type = SOCK_STREAM;
	req->u.socket.protocol = IPPROTO_IP;

	bedata->ring.req_prod_pvt++;
	FUNC2(&bedata->ring, notify);
	FUNC13(&bedata->socket_lock);
	if (notify)
		FUNC8(bedata->irq);

	FUNC14(bedata->inflight_req,
		   FUNC0(bedata->rsp[req_id].req_id) == req_id);

	/* read req_id, then the content */
	FUNC11();
	ret = bedata->rsp[req_id].ret;
	bedata->rsp[req_id].req_id = PVCALLS_INVALID_ID;

	FUNC10();
	return ret;
}