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
typedef  int /*<<< orphan*/  u8 ;
struct rtw_efuse {size_t rfe_option; } ;
struct rtw_dev {struct rtw_efuse efuse; } ;
struct rtw8822b_rfe_info {int /*<<< orphan*/  (* rtw_set_channel_rfe ) (struct rtw_dev*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 size_t FUNC0 (struct rtw8822b_rfe_info*) ; 
 scalar_t__ FUNC1 (int,char*,size_t) ; 
 struct rtw8822b_rfe_info* rtw8822b_rfe_info ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rtw8822b_rfe_info const*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtw_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct rtw_dev *rtwdev, u8 channel, u8 bw,
				 u8 primary_chan_idx)
{
	struct rtw_efuse *efuse = &rtwdev->efuse;
	const struct rtw8822b_rfe_info *rfe_info;

	if (FUNC1(efuse->rfe_option >= FUNC0(rtw8822b_rfe_info),
		 "rfe_option %d is out of boundary\n", efuse->rfe_option))
		return;

	rfe_info = &rtw8822b_rfe_info[efuse->rfe_option];

	FUNC2(rtwdev, channel, bw, primary_chan_idx);
	FUNC7(rtwdev, channel, bw, primary_chan_idx);
	FUNC4(rtwdev, channel, bw);
	FUNC5(rtwdev, bw);
	FUNC6(rtwdev);
	FUNC3(rtwdev, channel, bw, rfe_info);
	(*rfe_info->rtw_set_channel_rfe)(rtwdev, channel);
}