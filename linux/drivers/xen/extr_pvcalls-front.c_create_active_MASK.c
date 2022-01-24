#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* in; } ;
struct TYPE_9__ {int irq; int /*<<< orphan*/  out_mutex; int /*<<< orphan*/  in_mutex; TYPE_2__* ring; void* ref; TYPE_1__ data; int /*<<< orphan*/  inflight_conn_req; } ;
struct sock_mapping {int active_socket; TYPE_3__ active; } ;
struct TYPE_10__ {int /*<<< orphan*/  otherend_id; } ;
struct TYPE_8__ {void** ref; } ;

/* Variables and functions */
 int ENOMEM ; 
 int PVCALLS_RING_ORDER ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct sock_mapping*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  pvcalls_front_conn_handler ; 
 TYPE_4__* pvcalls_front_dev ; 
 scalar_t__ FUNC5 (void*) ; 
 int FUNC6 (TYPE_4__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC8(struct sock_mapping *map, int *evtchn)
{
	void *bytes;
	int ret = -ENOMEM, irq = -1, i;

	*evtchn = -1;
	FUNC2(&map->active.inflight_conn_req);

	bytes = map->active.data.in;
	for (i = 0; i < (1 << PVCALLS_RING_ORDER); i++)
		map->active.ring->ref[i] = FUNC1(
			pvcalls_front_dev->otherend_id,
			FUNC4(FUNC5(bytes) + i), 0);

	map->active.ref = FUNC1(
		pvcalls_front_dev->otherend_id,
		FUNC4(FUNC5((void *)map->active.ring)), 0);

	ret = FUNC6(pvcalls_front_dev, evtchn);
	if (ret)
		goto out_error;
	irq = FUNC0(*evtchn, pvcalls_front_conn_handler,
					0, "pvcalls-frontend", map);
	if (irq < 0) {
		ret = irq;
		goto out_error;
	}

	map->active.irq = irq;
	map->active_socket = true;
	FUNC3(&map->active.in_mutex);
	FUNC3(&map->active.out_mutex);

	return 0;

out_error:
	if (*evtchn >= 0)
		FUNC7(pvcalls_front_dev, *evtchn);
	return ret;
}