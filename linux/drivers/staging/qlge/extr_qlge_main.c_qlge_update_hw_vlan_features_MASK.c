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
struct ql_adapter {int /*<<< orphan*/  ndev; } ;
struct net_device {int /*<<< orphan*/  features; } ;
typedef  int /*<<< orphan*/  netdev_features_t ;

/* Variables and functions */
 int /*<<< orphan*/  link ; 
 struct ql_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct net_device*) ; 
 int FUNC3 (struct ql_adapter*) ; 
 int FUNC4 (struct ql_adapter*) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev,
					netdev_features_t features)
{
	struct ql_adapter *qdev = FUNC0(ndev);
	int status = 0;
	bool need_restart = FUNC2(ndev);

	if (need_restart) {
		status = FUNC3(qdev);
		if (status) {
			FUNC1(qdev, link, qdev->ndev,
				  "Failed to bring down the adapter\n");
			return status;
		}
	}

	/* update the features with resent change */
	ndev->features = features;

	if (need_restart) {
		status = FUNC4(qdev);
		if (status) {
			FUNC1(qdev, link, qdev->ndev,
				  "Failed to bring up the adapter\n");
			return status;
		}
	}

	return status;
}