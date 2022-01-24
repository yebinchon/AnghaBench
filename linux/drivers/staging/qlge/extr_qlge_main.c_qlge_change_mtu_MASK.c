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
struct ql_adapter {int /*<<< orphan*/  ndev; int /*<<< orphan*/  mpi_port_cfg_work; int /*<<< orphan*/  workqueue; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int EINVAL ; 
 int HZ ; 
 int /*<<< orphan*/  ifup ; 
 struct ql_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev, int new_mtu)
{
	struct ql_adapter *qdev = FUNC0(ndev);
	int status;

	if (ndev->mtu == 1500 && new_mtu == 9000) {
		FUNC1(qdev, ifup, qdev->ndev, "Changing to jumbo MTU.\n");
	} else if (ndev->mtu == 9000 && new_mtu == 1500) {
		FUNC1(qdev, ifup, qdev->ndev, "Changing to normal MTU.\n");
	} else
		return -EINVAL;

	FUNC4(qdev->workqueue,
			&qdev->mpi_port_cfg_work, 3*HZ);

	ndev->mtu = new_mtu;

	if (!FUNC2(qdev->ndev)) {
		return 0;
	}

	status = FUNC3(qdev);
	if (status) {
		FUNC1(qdev, ifup, qdev->ndev,
			  "Changing MTU failed.\n");
	}

	return status;
}