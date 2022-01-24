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
struct rtw_dev {int /*<<< orphan*/  hw; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,char*) ; 

__attribute__((used)) static int FUNC5(struct rtw_dev *rtwdev, struct pci_dev *pdev)
{
	int ret;

	ret = FUNC1(pdev);
	if (ret) {
		FUNC4(rtwdev, "failed to enable pci device\n");
		return ret;
	}

	FUNC3(pdev);
	FUNC2(pdev, rtwdev->hw);
	FUNC0(rtwdev->hw, &pdev->dev);

	return 0;
}