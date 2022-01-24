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
struct ql_adapter {int /*<<< orphan*/  timer; int /*<<< orphan*/  ndev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  ifup ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct ql_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct net_device*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct net_device *ndev = FUNC5(pdev);
	struct ql_adapter *qdev = FUNC1(ndev);
	int err = 0;

	if (FUNC4(ndev)) {
		err = FUNC6(ndev);
		if (err) {
			FUNC3(qdev, ifup, qdev->ndev,
				  "Device initialization failed after reset.\n");
			return;
		}
	} else {
		FUNC3(qdev, ifup, qdev->ndev,
			  "Device was not running prior to EEH.\n");
	}
	FUNC0(&qdev->timer, jiffies + (5*HZ));
	FUNC2(ndev);
}