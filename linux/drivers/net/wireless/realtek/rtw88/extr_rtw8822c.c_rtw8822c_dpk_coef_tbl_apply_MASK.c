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
struct rtw_dpk_info {int /*<<< orphan*/ ** coef; } ;
struct TYPE_2__ {struct rtw_dpk_info dpk_info; } ;
struct rtw_dev {TYPE_1__ dm_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_RXSRAM_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*) ; 
 int /*<<< orphan*/ * rtw8822c_dpk_get_coef_tbl ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rtw_dev *rtwdev, u8 path)
{
	struct rtw_dpk_info *dpk_info = &rtwdev->dm_info.dpk_info;
	int i;

	for (i = 0; i < 20; i++) {
		FUNC1(rtwdev, REG_RXSRAM_CTL,
			    rtw8822c_dpk_get_coef_tbl[i]);
		dpk_info->coef[path][i] = FUNC0(rtwdev);
	}
}