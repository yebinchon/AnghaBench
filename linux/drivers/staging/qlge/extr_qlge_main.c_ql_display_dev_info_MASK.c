#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ql_adapter {int chip_rev_id; int /*<<< orphan*/  ndev; int /*<<< orphan*/  port; int /*<<< orphan*/  func; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 struct ql_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  probe ; 

__attribute__((used)) static void FUNC2(struct net_device *ndev)
{
	struct ql_adapter *qdev = FUNC0(ndev);

	FUNC1(qdev, probe, qdev->ndev,
		   "Function #%d, Port %d, NIC Roll %d, NIC Rev = %d, "
		   "XG Roll = %d, XG Rev = %d.\n",
		   qdev->func,
		   qdev->port,
		   qdev->chip_rev_id & 0x0000000f,
		   qdev->chip_rev_id >> 4 & 0x0000000f,
		   qdev->chip_rev_id >> 8 & 0x0000000f,
		   qdev->chip_rev_id >> 12 & 0x0000000f);
	FUNC1(qdev, probe, qdev->ndev,
		   "MAC address %pM\n", ndev->dev_addr);
}