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
typedef  scalar_t__ u8 ;
struct TYPE_4__ {scalar_t__ nss; int /*<<< orphan*/  ant_num; int /*<<< orphan*/  ptcl; int /*<<< orphan*/  bw; int /*<<< orphan*/  hci; } ;
struct rtw_efuse {TYPE_2__ hw_cap; } ;
struct TYPE_3__ {scalar_t__ rf_path_num; } ;
struct rtw_dev {TYPE_1__ hal; struct rtw_efuse efuse; } ;

/* Variables and functions */
 scalar_t__ C2H_HW_FEATURE_REPORT ; 
 int EBUSY ; 
 scalar_t__ EFUSE_HW_CAP_IGNORE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int HW_FEATURE_LEN ; 
 scalar_t__ REG_C2HEVT ; 
 int /*<<< orphan*/  RTW_DBG_EFUSE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct rtw_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct rtw_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct rtw_dev *rtwdev)
{
	struct rtw_efuse *efuse = &rtwdev->efuse;
	u8 hw_feature[HW_FEATURE_LEN];
	u8 id;
	u8 bw;
	int i;

	id = FUNC9(rtwdev, REG_C2HEVT);
	if (id != C2H_HW_FEATURE_REPORT) {
		FUNC7(rtwdev, "failed to read hw feature report\n");
		return -EBUSY;
	}

	for (i = 0; i < HW_FEATURE_LEN; i++)
		hw_feature[i] = FUNC9(rtwdev, REG_C2HEVT + 2 + i);

	FUNC10(rtwdev, REG_C2HEVT, 0);

	bw = FUNC1(hw_feature);
	efuse->hw_cap.bw = FUNC5(bw);
	efuse->hw_cap.hci = FUNC2(hw_feature);
	efuse->hw_cap.nss = FUNC3(hw_feature);
	efuse->hw_cap.ptcl = FUNC4(hw_feature);
	efuse->hw_cap.ant_num = FUNC0(hw_feature);

	FUNC8(rtwdev, efuse->hw_cap.ant_num);

	if (efuse->hw_cap.nss == EFUSE_HW_CAP_IGNORE)
		efuse->hw_cap.nss = rtwdev->hal.rf_path_num;

	FUNC6(rtwdev, RTW_DBG_EFUSE,
		"hw cap: hci=0x%02x, bw=0x%02x, ptcl=0x%02x, ant_num=%d, nss=%d\n",
		efuse->hw_cap.hci, efuse->hw_cap.bw, efuse->hw_cap.ptcl,
		efuse->hw_cap.ant_num, efuse->hw_cap.nss);

	return 0;
}