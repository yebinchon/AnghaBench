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
struct rtw_pci {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * ops; } ;
struct rtw_dev {TYPE_1__ hci; struct rtw_chip_info* chip; int /*<<< orphan*/ * dev; struct ieee80211_hw* hw; } ;
struct rtw_chip_info {int dummy; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  revision; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; int /*<<< orphan*/  dev; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RTW_DBG_PCI ; 
 int /*<<< orphan*/  RTW_HCI_TYPE_PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct ieee80211_hw* FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int FUNC4 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*) ; 
 int FUNC6 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtw_dev*,char*) ; 
 int /*<<< orphan*/  rtw_ops ; 
 int FUNC9 (struct rtw_dev*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtw_dev*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtw_dev*,struct pci_dev*) ; 
 int /*<<< orphan*/  rtw_pci_ops ; 
 int FUNC12 (struct rtw_dev*,struct pci_dev*) ; 
 int FUNC13 (struct rtw_dev*,struct pci_dev*) ; 
 int FUNC14 (struct rtw_dev*,struct ieee80211_hw*) ; 

__attribute__((used)) static int FUNC15(struct pci_dev *pdev,
			 const struct pci_device_id *id)
{
	struct ieee80211_hw *hw;
	struct rtw_dev *rtwdev;
	int drv_data_size;
	int ret;

	drv_data_size = sizeof(struct rtw_dev) + sizeof(struct rtw_pci);
	hw = FUNC1(drv_data_size, &rtw_ops);
	if (!hw) {
		FUNC0(&pdev->dev, "failed to allocate hw\n");
		return -ENOMEM;
	}

	rtwdev = hw->priv;
	rtwdev->hw = hw;
	rtwdev->dev = &pdev->dev;
	rtwdev->chip = (struct rtw_chip_info *)id->driver_data;
	rtwdev->hci.ops = &rtw_pci_ops;
	rtwdev->hci.type = RTW_HCI_TYPE_PCIE;

	ret = FUNC6(rtwdev);
	if (ret)
		goto err_release_hw;

	FUNC7(rtwdev, RTW_DBG_PCI,
		"rtw88 pci probe: vendor=0x%4.04X device=0x%4.04X rev=%d\n",
		pdev->vendor, pdev->device, pdev->revision);

	ret = FUNC9(rtwdev, pdev);
	if (ret) {
		FUNC8(rtwdev, "failed to claim pci device\n");
		goto err_deinit_core;
	}

	ret = FUNC13(rtwdev, pdev);
	if (ret) {
		FUNC8(rtwdev, "failed to setup pci resources\n");
		goto err_pci_declaim;
	}

	ret = FUNC4(rtwdev);
	if (ret) {
		FUNC8(rtwdev, "failed to setup chip information\n");
		goto err_destroy_pci;
	}

	ret = FUNC14(rtwdev, hw);
	if (ret) {
		FUNC8(rtwdev, "failed to register hw\n");
		goto err_destroy_pci;
	}

	ret = FUNC12(rtwdev, pdev);
	if (ret) {
		FUNC3(hw);
		goto err_destroy_pci;
	}

	return 0;

err_destroy_pci:
	FUNC11(rtwdev, pdev);

err_pci_declaim:
	FUNC10(rtwdev, pdev);

err_deinit_core:
	FUNC5(rtwdev);

err_release_hw:
	FUNC2(hw);

	return ret;
}