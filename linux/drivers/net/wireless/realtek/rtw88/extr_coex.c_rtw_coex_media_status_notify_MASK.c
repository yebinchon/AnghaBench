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
typedef  scalar_t__ u8 ;
struct rtw_coex_stat {int wl_slot_extend; } ;
struct rtw_coex {scalar_t__ stop_dm; struct rtw_coex_stat stat; } ;
struct rtw_dev {struct rtw_coex coex; } ;

/* Variables and functions */
 scalar_t__ COEX_H2C69_WL_LEAKAP ; 
 scalar_t__ COEX_MEDIA_CONNECT ; 
 scalar_t__ COEX_MEDIA_CONNECT_5G ; 
 int /*<<< orphan*/  COEX_RSN_2GMEDIA ; 
 int /*<<< orphan*/  COEX_RSN_5GMEDIA ; 
 int /*<<< orphan*/  COEX_RSN_MEDIADISCON ; 
 int /*<<< orphan*/  COEX_SCBD_ACTIVE ; 
 int /*<<< orphan*/  COEX_SET_ANT_2G ; 
 int /*<<< orphan*/  COEX_SET_ANT_5G ; 
 int /*<<< orphan*/  COEX_WLPRI_RX_CCK ; 
 scalar_t__ PARA1_H2C69_EN_5MS ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,scalar_t__,scalar_t__*) ; 

void FUNC6(struct rtw_dev *rtwdev, u8 type)
{
	struct rtw_coex *coex = &rtwdev->coex;
	struct rtw_coex_stat *coex_stat = &coex->stat;
	u8 para[6] = {0};

	if (coex->stop_dm)
		return;

	if (type == COEX_MEDIA_CONNECT_5G) {
		FUNC4(rtwdev, COEX_SCBD_ACTIVE, true);

		FUNC1(rtwdev, true, COEX_SET_ANT_5G);
		FUNC0(rtwdev, COEX_RSN_5GMEDIA);
	} else if (type == COEX_MEDIA_CONNECT) {
		FUNC4(rtwdev, COEX_SCBD_ACTIVE, true);

		/* Force antenna setup for no scan result issue */
		FUNC1(rtwdev, true, COEX_SET_ANT_2G);

		/* Set CCK Rx high Pri */
		FUNC2(rtwdev, COEX_WLPRI_RX_CCK, 1);

		/* always enable 5ms extend if connect */
		para[0] = COEX_H2C69_WL_LEAKAP;
		para[1] = PARA1_H2C69_EN_5MS; /* enable 5ms extend */
		FUNC5(rtwdev, para[0], &para[1]);
		coex_stat->wl_slot_extend = true;
		FUNC0(rtwdev, COEX_RSN_2GMEDIA);
	} else {
		FUNC4(rtwdev, COEX_SCBD_ACTIVE, false);

		FUNC2(rtwdev, COEX_WLPRI_RX_CCK, 0);

		FUNC0(rtwdev, COEX_RSN_MEDIADISCON);
	}

	FUNC3(rtwdev, type);
}