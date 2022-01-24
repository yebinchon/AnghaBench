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
struct ql_adapter {int rss_ring_count; int /*<<< orphan*/  flags; TYPE_1__* rx_ring; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  QL_ADAPTER_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ql_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct ql_adapter*) ; 

__attribute__((used)) static void FUNC10(struct net_device *ndev)
{
	int i;
	struct ql_adapter *qdev = FUNC1(ndev);

	if (FUNC3(ndev)) {
		FUNC2(ndev);
		FUNC5(ndev);
	}

	/* Disabling the timer */
	FUNC6(qdev);

	for (i = 0; i < qdev->rss_ring_count; i++)
		FUNC4(&qdev->rx_ring[i].napi);

	FUNC0(QL_ADAPTER_UP, &qdev->flags);
	FUNC9(qdev);
	FUNC7(qdev);
	FUNC8(qdev);
}