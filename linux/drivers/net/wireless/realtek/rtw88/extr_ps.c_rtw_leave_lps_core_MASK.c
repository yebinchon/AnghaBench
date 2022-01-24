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
struct rtw_lps_conf {int awake_interval; scalar_t__ smart_ps; scalar_t__ rlbm; int /*<<< orphan*/  state; } ;
struct rtw_dev {struct rtw_lps_conf lps_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  COEX_LPS_DISABLE ; 
 int /*<<< orphan*/  RTW_ALL_ON ; 
 int /*<<< orphan*/  RTW_FLAG_LEISURE_PS ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*) ; 

__attribute__((used)) static void FUNC3(struct rtw_dev *rtwdev)
{
	struct rtw_lps_conf *conf = &rtwdev->lps_conf;

	conf->state = RTW_ALL_ON;
	conf->awake_interval = 1;
	conf->rlbm = 0;
	conf->smart_ps = 0;

	FUNC2(rtwdev);
	FUNC1(rtwdev, RTW_FLAG_LEISURE_PS);

	FUNC0(rtwdev, COEX_LPS_DISABLE);
}