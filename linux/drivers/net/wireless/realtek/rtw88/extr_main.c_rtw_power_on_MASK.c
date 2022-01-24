#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rtw_fw_state {int /*<<< orphan*/  firmware; int /*<<< orphan*/  completion; } ;
struct TYPE_4__ {int /*<<< orphan*/  btcoex; } ;
struct rtw_dev {TYPE_2__ efuse; struct rtw_fw_state fw; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* phy_set_param ) (struct rtw_dev*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*) ; 
 int FUNC2 (struct rtw_dev*,struct rtw_fw_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*) ; 
 int FUNC6 (struct rtw_dev*) ; 
 int FUNC7 (struct rtw_dev*) ; 
 int FUNC8 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtw_dev*) ; 
 int FUNC10 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct rtw_dev *rtwdev)
{
	struct rtw_chip_info *chip = rtwdev->chip;
	struct rtw_fw_state *fw = &rtwdev->fw;
	bool wifi_only;
	int ret;

	ret = FUNC6(rtwdev);
	if (ret) {
		FUNC3(rtwdev, "failed to setup hci\n");
		goto err;
	}

	/* power on MAC before firmware downloaded */
	ret = FUNC10(rtwdev);
	if (ret) {
		FUNC3(rtwdev, "failed to power on mac\n");
		goto err;
	}

	FUNC12(&fw->completion);
	if (!fw->firmware) {
		ret = -EINVAL;
		FUNC3(rtwdev, "failed to load firmware\n");
		goto err;
	}

	ret = FUNC2(rtwdev, fw);
	if (ret) {
		FUNC3(rtwdev, "failed to download firmware\n");
		goto err_off;
	}

	/* config mac after firmware downloaded */
	ret = FUNC8(rtwdev);
	if (ret) {
		FUNC3(rtwdev, "failed to configure mac\n");
		goto err_off;
	}

	chip->ops->phy_set_param(rtwdev);

	ret = FUNC7(rtwdev);
	if (ret) {
		FUNC3(rtwdev, "failed to start hci\n");
		goto err_off;
	}

	/* send H2C after HCI has started */
	FUNC4(rtwdev);
	FUNC5(rtwdev);

	wifi_only = !rtwdev->efuse.btcoex;
	FUNC1(rtwdev);
	FUNC0(rtwdev, wifi_only);

	return 0;

err_off:
	FUNC9(rtwdev);

err:
	return ret;
}