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
struct rtw_coex {int stop_dm; int wl_rf_off; } ;
struct rtw_dev {struct rtw_coex coex; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COEX_SET_ANT_POWERON ; 
 int /*<<< orphan*/  REG_SYS_FUNC_EN ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct rtw_dev *rtwdev)
{
	struct rtw_coex *coex = &rtwdev->coex;

	coex->stop_dm = true;
	coex->wl_rf_off = false;

	/* enable BB, we can write 0x948 */
	FUNC5(rtwdev, REG_SYS_FUNC_EN, FUNC0(0) | FUNC0(1));

	FUNC1(rtwdev);
	FUNC3(rtwdev);

	/* set antenna path to BT */
	FUNC2(rtwdev, true, COEX_SET_ANT_POWERON);

	/* red x issue */
	FUNC4(rtwdev, 0xff1a, 0x0);
}