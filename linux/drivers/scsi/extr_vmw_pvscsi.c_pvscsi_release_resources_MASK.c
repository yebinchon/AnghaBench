#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pvscsi_adapter {int req_pages; int cmp_pages; int msg_pages; int /*<<< orphan*/  msgRingPA; scalar_t__ msg_ring; TYPE_1__* dev; int /*<<< orphan*/  cmpRingPA; scalar_t__ cmp_ring; int /*<<< orphan*/  reqRingPA; scalar_t__ req_ring; int /*<<< orphan*/  ringStatePA; scalar_t__ rings_state; scalar_t__ cmd_map; scalar_t__ mmioBase; scalar_t__ workqueue; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct pvscsi_adapter*) ; 

__attribute__((used)) static void FUNC6(struct pvscsi_adapter *adapter)
{
	if (adapter->workqueue)
		FUNC0(adapter->workqueue);

	if (adapter->mmioBase)
		FUNC3(adapter->dev, adapter->mmioBase);

	FUNC4(adapter->dev);

	if (adapter->cmd_map) {
		FUNC5(adapter);
		FUNC2(adapter->cmd_map);
	}

	if (adapter->rings_state)
		FUNC1(&adapter->dev->dev, PAGE_SIZE,
				    adapter->rings_state, adapter->ringStatePA);

	if (adapter->req_ring)
		FUNC1(&adapter->dev->dev,
				    adapter->req_pages * PAGE_SIZE,
				    adapter->req_ring, adapter->reqRingPA);

	if (adapter->cmp_ring)
		FUNC1(&adapter->dev->dev,
				    adapter->cmp_pages * PAGE_SIZE,
				    adapter->cmp_ring, adapter->cmpRingPA);

	if (adapter->msg_ring)
		FUNC1(&adapter->dev->dev,
				    adapter->msg_pages * PAGE_SIZE,
				    adapter->msg_ring, adapter->msgRingPA);
}