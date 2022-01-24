#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct xenbus_device {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct TYPE_7__ {TYPE_1__ accept; } ;
struct xen_pvcalls_response {scalar_t__ cmd; int ret; TYPE_2__ u; int /*<<< orphan*/  req_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  id; } ;
struct TYPE_9__ {TYPE_3__ accept; } ;
struct xen_pvcalls_request {scalar_t__ cmd; TYPE_4__ u; int /*<<< orphan*/  req_id; } ;
struct sockpass_mapping {int /*<<< orphan*/  register_work; int /*<<< orphan*/  wq; int /*<<< orphan*/  copy_lock; struct xen_pvcalls_request reqcopy; } ;
struct TYPE_10__ {int /*<<< orphan*/  rsp_prod_pvt; } ;
struct pvcalls_fedata {TYPE_5__ ring; int /*<<< orphan*/  socket_lock; int /*<<< orphan*/  socketpass_mappings; } ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 struct xen_pvcalls_response* FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 struct pvcalls_fedata* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sockpass_mapping* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct xenbus_device *dev,
			       struct xen_pvcalls_request *req)
{
	struct pvcalls_fedata *fedata;
	struct sockpass_mapping *mappass;
	int ret = -EINVAL;
	struct xen_pvcalls_response *rsp;
	unsigned long flags;

	fedata = FUNC1(&dev->dev);

	FUNC2(&fedata->socket_lock);
	mappass = FUNC4(&fedata->socketpass_mappings,
		req->u.accept.id);
	FUNC7(&fedata->socket_lock);
	if (mappass == NULL)
		goto out_error;

	/*
	 * Limitation of the current implementation: only support one
	 * concurrent accept or poll call on one socket.
	 */
	FUNC5(&mappass->copy_lock, flags);
	if (mappass->reqcopy.cmd != 0) {
		FUNC6(&mappass->copy_lock, flags);
		ret = -EINTR;
		goto out_error;
	}

	mappass->reqcopy = *req;
	FUNC6(&mappass->copy_lock, flags);
	FUNC3(mappass->wq, &mappass->register_work);

	/* Tell the caller we don't need to send back a notification yet */
	return -1;

out_error:
	rsp = FUNC0(&fedata->ring, fedata->ring.rsp_prod_pvt++);
	rsp->req_id = req->req_id;
	rsp->cmd = req->cmd;
	rsp->u.accept.id = req->u.accept.id;
	rsp->ret = ret;
	return 0;
}