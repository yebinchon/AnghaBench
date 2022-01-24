#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ req_cons; } ;
struct xenvif_queue {TYPE_1__* vif; TYPE_2__ tx; } ;
struct xen_netif_extra_info {int flags; int type; } ;
typedef  int /*<<< orphan*/  extra ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 int EBADR ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,struct xen_netif_extra_info*) ; 
 int XEN_NETIF_EXTRA_FLAG_MORE ; 
 int XEN_NETIF_EXTRA_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct xen_netif_extra_info*,struct xen_netif_extra_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct xenvif_queue *queue,
			     struct xen_netif_extra_info *extras,
			     unsigned int *extra_count,
			     int work_to_do)
{
	struct xen_netif_extra_info extra;
	RING_IDX cons = queue->tx.req_cons;

	do {
		if (FUNC3(work_to_do-- <= 0)) {
			FUNC2(queue->vif->dev, "Missing extra info\n");
			FUNC4(queue->vif);
			return -EBADR;
		}

		FUNC0(&queue->tx, cons, &extra);

		queue->tx.req_cons = ++cons;
		(*extra_count)++;

		if (FUNC3(!extra.type ||
			     extra.type >= XEN_NETIF_EXTRA_TYPE_MAX)) {
			FUNC2(queue->vif->dev,
				   "Invalid extra type: %d\n", extra.type);
			FUNC4(queue->vif);
			return -EINVAL;
		}

		FUNC1(&extras[extra.type - 1], &extra, sizeof(extra));
	} while (extra.flags & XEN_NETIF_EXTRA_FLAG_MORE);

	return work_to_do;
}