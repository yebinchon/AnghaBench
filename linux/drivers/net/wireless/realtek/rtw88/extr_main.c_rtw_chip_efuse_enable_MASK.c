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
struct rtw_fw_state {int /*<<< orphan*/  firmware; int /*<<< orphan*/  completion; } ;
struct rtw_dev {struct rtw_fw_state fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  C2H_HW_FEATURE_DUMP ; 
 int EINVAL ; 
 int /*<<< orphan*/  REG_C2HEVT ; 
 int FUNC0 (struct rtw_dev*,struct rtw_fw_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,char*) ; 
 int FUNC2 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*) ; 
 int FUNC4 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct rtw_dev *rtwdev)
{
	struct rtw_fw_state *fw = &rtwdev->fw;
	int ret;

	ret = FUNC2(rtwdev);
	if (ret) {
		FUNC1(rtwdev, "failed to setup hci\n");
		goto err;
	}

	ret = FUNC4(rtwdev);
	if (ret) {
		FUNC1(rtwdev, "failed to power on mac\n");
		goto err;
	}

	FUNC5(rtwdev, REG_C2HEVT, C2H_HW_FEATURE_DUMP);

	FUNC6(&fw->completion);
	if (!fw->firmware) {
		ret = -EINVAL;
		FUNC1(rtwdev, "failed to load firmware\n");
		goto err;
	}

	ret = FUNC0(rtwdev, fw);
	if (ret) {
		FUNC1(rtwdev, "failed to download firmware\n");
		goto err_off;
	}

	return 0;

err_off:
	FUNC3(rtwdev);

err:
	return ret;
}