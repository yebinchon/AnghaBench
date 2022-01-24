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
typedef  int u32 ;
struct virtproc_info {int /*<<< orphan*/  endpoints_lock; int /*<<< orphan*/  endpoints; TYPE_1__* vdev; } ;
struct rpmsg_endpoint {int addr; int /*<<< orphan*/  refcount; int /*<<< orphan*/ * ops; void* priv; int /*<<< orphan*/  cb; struct rpmsg_device* rpdev; int /*<<< orphan*/  cb_lock; } ;
struct device {int dummy; } ;
struct rpmsg_device {struct device dev; } ;
typedef  int /*<<< orphan*/  rpmsg_rx_cb_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RPMSG_ADDR_ANY ; 
 int RPMSG_RESERVED_ADDRESSES ; 
 int /*<<< orphan*/  __ept_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct rpmsg_endpoint*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rpmsg_endpoint* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  virtio_endpoint_ops ; 

__attribute__((used)) static struct rpmsg_endpoint *FUNC8(struct virtproc_info *vrp,
						 struct rpmsg_device *rpdev,
						 rpmsg_rx_cb_t cb,
						 void *priv, u32 addr)
{
	int id_min, id_max, id;
	struct rpmsg_endpoint *ept;
	struct device *dev = rpdev ? &rpdev->dev : &vrp->vdev->dev;

	ept = FUNC4(sizeof(*ept), GFP_KERNEL);
	if (!ept)
		return NULL;

	FUNC2(&ept->refcount);
	FUNC5(&ept->cb_lock);

	ept->rpdev = rpdev;
	ept->cb = cb;
	ept->priv = priv;
	ept->ops = &virtio_endpoint_ops;

	/* do we need to allocate a local address ? */
	if (addr == RPMSG_ADDR_ANY) {
		id_min = RPMSG_RESERVED_ADDRESSES;
		id_max = 0;
	} else {
		id_min = addr;
		id_max = addr + 1;
	}

	FUNC6(&vrp->endpoints_lock);

	/* bind the endpoint to an rpmsg address (and allocate one if needed) */
	id = FUNC1(&vrp->endpoints, ept, id_min, id_max, GFP_KERNEL);
	if (id < 0) {
		FUNC0(dev, "idr_alloc failed: %d\n", id);
		goto free_ept;
	}
	ept->addr = id;

	FUNC7(&vrp->endpoints_lock);

	return ept;

free_ept:
	FUNC7(&vrp->endpoints_lock);
	FUNC3(&ept->refcount, __ept_release);
	return NULL;
}