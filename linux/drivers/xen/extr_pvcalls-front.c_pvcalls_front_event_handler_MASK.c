#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct xenbus_device {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {scalar_t__ id; } ;
struct TYPE_9__ {TYPE_1__ poll; } ;
struct xen_pvcalls_response {int req_id; scalar_t__ cmd; TYPE_2__ u; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; } ;
struct sock_mapping {TYPE_3__ passive; } ;
struct TYPE_12__ {int /*<<< orphan*/  rsp_cons; } ;
struct pvcalls_bedata {int /*<<< orphan*/  inflight_req; TYPE_5__ ring; TYPE_4__* rsp; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_11__ {int req_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  PVCALLS_FLAG_POLL_INFLIGHT ; 
 int /*<<< orphan*/  PVCALLS_FLAG_POLL_RET ; 
 scalar_t__ PVCALLS_POLL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int) ; 
 struct xen_pvcalls_response* FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 struct pvcalls_bedata* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct xenbus_device *dev = dev_id;
	struct pvcalls_bedata *bedata;
	struct xen_pvcalls_response *rsp;
	uint8_t *src, *dst;
	int req_id = 0, more = 0, done = 0;

	if (dev == NULL)
		return IRQ_HANDLED;

	FUNC6();
	bedata = FUNC4(&dev->dev);
	if (bedata == NULL) {
		FUNC7();
		return IRQ_HANDLED;
	}

again:
	while (FUNC2(&bedata->ring)) {
		rsp = FUNC1(&bedata->ring, bedata->ring.rsp_cons);

		req_id = rsp->req_id;
		if (rsp->cmd == PVCALLS_POLL) {
			struct sock_mapping *map = (struct sock_mapping *)(uintptr_t)
						   rsp->u.poll.id;

			FUNC3(PVCALLS_FLAG_POLL_INFLIGHT,
				  (void *)&map->passive.flags);
			/*
			 * clear INFLIGHT, then set RET. It pairs with
			 * the checks at the beginning of
			 * pvcalls_front_poll_passive.
			 */
			FUNC9();
			FUNC8(PVCALLS_FLAG_POLL_RET,
				(void *)&map->passive.flags);
		} else {
			dst = (uint8_t *)&bedata->rsp[req_id] +
			      sizeof(rsp->req_id);
			src = (uint8_t *)rsp + sizeof(rsp->req_id);
			FUNC5(dst, src, sizeof(*rsp) - sizeof(rsp->req_id));
			/*
			 * First copy the rest of the data, then req_id. It is
			 * paired with the barrier when accessing bedata->rsp.
			 */
			FUNC9();
			bedata->rsp[req_id].req_id = req_id;
		}

		done = 1;
		bedata->ring.rsp_cons++;
	}

	FUNC0(&bedata->ring, more);
	if (more)
		goto again;
	if (done)
		FUNC10(&bedata->inflight_req);
	FUNC7();
	return IRQ_HANDLED;
}