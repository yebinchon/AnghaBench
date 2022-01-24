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
struct ql_adapter {int /*<<< orphan*/  timer; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ql_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct ql_adapter*) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *pdev, pm_message_t state)
{
	struct net_device *ndev = FUNC6(pdev);
	struct ql_adapter *qdev = FUNC1(ndev);
	int err;

	FUNC2(ndev);
	FUNC0(&qdev->timer);

	if (FUNC3(ndev)) {
		err = FUNC9(qdev);
		if (!err)
			return err;
	}

	FUNC10(qdev);
	err = FUNC7(pdev);
	if (err)
		return err;

	FUNC5(pdev);

	FUNC8(pdev, FUNC4(pdev, state));

	return 0;
}