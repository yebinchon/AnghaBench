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
struct rtw_dpk_info {int gnt_value; int /*<<< orphan*/  gnt_control; } ;
struct TYPE_2__ {struct rtw_dpk_info dpk_info; } ;
struct rtw_dev {TYPE_1__ dm_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MASKBYTE1 ; 
 int /*<<< orphan*/  MASKDWORD ; 
 int FUNC1 (struct rtw_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct rtw_dev *rtwdev, bool is_before_k)
{
	struct rtw_dpk_info *dpk_info = &rtwdev->dm_info.dpk_info;

	if (is_before_k) {
		dpk_info->gnt_control = FUNC3(rtwdev, 0x70);
		dpk_info->gnt_value = FUNC1(rtwdev, 0x38);
		FUNC5(rtwdev, 0x70, FUNC0(26), 0x1);
		FUNC2(rtwdev, 0x38, MASKBYTE1, 0x77);
	} else {
		FUNC2(rtwdev, 0x38, MASKDWORD,
					    dpk_info->gnt_value);
		FUNC4(rtwdev, 0x70, dpk_info->gnt_control);
	}
}