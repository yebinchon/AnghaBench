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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rtw_dpk_info {int /*<<< orphan*/  dpk_path_ok; scalar_t__* result; } ;
struct TYPE_2__ {struct rtw_dpk_info dpk_info; } ;
struct rtw_dev {TYPE_1__ dm_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTW_DBG_RFK ; 
 size_t FUNC0 (struct rtw_dev*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,size_t,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rtw_dev *rtwdev, u8 path)
{
	struct rtw_dpk_info *dpk_info = &rtwdev->dm_info.dpk_info;
	u32 dpk_txagc;
	u8 dpk_fail;

	FUNC3(rtwdev, RTW_DBG_RFK, "[DPK] s%d dpk start\n", path);

	dpk_txagc = FUNC2(rtwdev, path);

	dpk_fail = FUNC0(rtwdev, dpk_txagc, path);

	if (!FUNC1(rtwdev, dpk_fail, dpk_txagc, path))
		FUNC4(rtwdev, "failed to do dpk calibration\n");

	FUNC3(rtwdev, RTW_DBG_RFK, "[DPK] s%d dpk finish\n", path);

	if (dpk_info->result[path])
		FUNC5(path, dpk_info->dpk_path_ok);
}