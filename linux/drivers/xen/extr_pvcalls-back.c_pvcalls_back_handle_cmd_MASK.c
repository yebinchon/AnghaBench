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
struct xenbus_device {int /*<<< orphan*/  dev; } ;
struct xen_pvcalls_response {int cmd; int /*<<< orphan*/  ret; int /*<<< orphan*/  req_id; } ;
struct xen_pvcalls_request {int cmd; int /*<<< orphan*/  req_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  rsp_prod_pvt; } ;
struct pvcalls_fedata {TYPE_1__ ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTSUPP ; 
#define  PVCALLS_ACCEPT 134 
#define  PVCALLS_BIND 133 
#define  PVCALLS_CONNECT 132 
#define  PVCALLS_LISTEN 131 
#define  PVCALLS_POLL 130 
#define  PVCALLS_RELEASE 129 
#define  PVCALLS_SOCKET 128 
 struct xen_pvcalls_response* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct pvcalls_fedata* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct xenbus_device*,struct xen_pvcalls_request*) ; 
 int FUNC3 (struct xenbus_device*,struct xen_pvcalls_request*) ; 
 int FUNC4 (struct xenbus_device*,struct xen_pvcalls_request*) ; 
 int FUNC5 (struct xenbus_device*,struct xen_pvcalls_request*) ; 
 int FUNC6 (struct xenbus_device*,struct xen_pvcalls_request*) ; 
 int FUNC7 (struct xenbus_device*,struct xen_pvcalls_request*) ; 
 int FUNC8 (struct xenbus_device*,struct xen_pvcalls_request*) ; 

__attribute__((used)) static int FUNC9(struct xenbus_device *dev,
				   struct xen_pvcalls_request *req)
{
	int ret = 0;

	switch (req->cmd) {
	case PVCALLS_SOCKET:
		ret = FUNC8(dev, req);
		break;
	case PVCALLS_CONNECT:
		ret = FUNC4(dev, req);
		break;
	case PVCALLS_RELEASE:
		ret = FUNC7(dev, req);
		break;
	case PVCALLS_BIND:
		ret = FUNC3(dev, req);
		break;
	case PVCALLS_LISTEN:
		ret = FUNC5(dev, req);
		break;
	case PVCALLS_ACCEPT:
		ret = FUNC2(dev, req);
		break;
	case PVCALLS_POLL:
		ret = FUNC6(dev, req);
		break;
	default:
	{
		struct pvcalls_fedata *fedata;
		struct xen_pvcalls_response *rsp;

		fedata = FUNC1(&dev->dev);
		rsp = FUNC0(
				&fedata->ring, fedata->ring.rsp_prod_pvt++);
		rsp->req_id = req->req_id;
		rsp->cmd = req->cmd;
		rsp->ret = -ENOTSUPP;
		break;
	}
	}
	return ret;
}