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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct rtw_dpk_info {int /*<<< orphan*/ ** coef; } ;
struct TYPE_2__ {struct rtw_dpk_info dpk_info; } ;
struct rtw_dev {TYPE_1__ dm_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC2(struct rtw_dev *rtwdev, u8 path)
{
	struct rtw_dpk_info *dpk_info = &rtwdev->dm_info.dpk_info;
	u8 addr, result = 1;
	u16 coef_i, coef_q;

	for (addr = 0; addr < 20; addr++) {
		coef_i = FUNC0(0x1fff0000, dpk_info->coef[path][addr]);
		coef_q = FUNC0(0x1fff, dpk_info->coef[path][addr]);

		if (FUNC1(rtwdev, coef_i, coef_q)) {
			result = 0;
			break;
		}
	}
	return result;
}