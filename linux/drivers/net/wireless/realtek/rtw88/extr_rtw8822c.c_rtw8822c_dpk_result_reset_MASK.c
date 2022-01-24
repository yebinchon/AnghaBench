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
typedef  int u8 ;
struct rtw_dpk_info {int* dpk_gs; int /*<<< orphan*/ * thermal_dpk; scalar_t__* pre_pwsf; scalar_t__* result; scalar_t__* dpk_txagc; int /*<<< orphan*/  dpk_path_ok; } ;
struct TYPE_4__ {int rf_path_num; } ;
struct TYPE_3__ {struct rtw_dpk_info dpk_info; } ;
struct rtw_dev {TYPE_2__ hal; TYPE_1__ dm_info; } ;

/* Variables and functions */
 int BIT_SUBPAGE ; 
 int REG_NCTL0 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct rtw_dev *rtwdev)
{
	struct rtw_dpk_info *dpk_info = &rtwdev->dm_info.dpk_info;
	u8 path;

	for (path = 0; path < rtwdev->hal.rf_path_num; path++) {
		FUNC0(path, dpk_info->dpk_path_ok);
		FUNC2(rtwdev, REG_NCTL0, BIT_SUBPAGE,
				 0x8 | (path << 1));
		FUNC2(rtwdev, 0x1b58, 0x0000007f, 0x0);

		dpk_info->dpk_txagc[path] = 0;
		dpk_info->result[path] = 0;
		dpk_info->dpk_gs[path] = 0x5b;
		dpk_info->pre_pwsf[path] = 0;
		dpk_info->thermal_dpk[path] = FUNC1(rtwdev,
									path);
	}
}