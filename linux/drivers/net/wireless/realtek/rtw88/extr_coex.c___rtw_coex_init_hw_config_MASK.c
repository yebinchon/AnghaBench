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
struct rtw_coex {int stop_dm; int freeze; scalar_t__ wl_rf_off; } ;
struct rtw_dev {struct rtw_coex coex; } ;

/* Variables and functions */
 int COEX_SCBD_ACTIVE ; 
 int COEX_SCBD_ALL ; 
 int COEX_SCBD_SCAN ; 
 int /*<<< orphan*/  COEX_SET_ANT_INIT ; 
 int /*<<< orphan*/  COEX_SET_ANT_WOFF ; 
 int /*<<< orphan*/  COEX_SET_ANT_WONLY ; 
 int /*<<< orphan*/  COEX_WLPRI_TX_BEACON ; 
 int /*<<< orphan*/  COEX_WLPRI_TX_BEACONQ ; 
 int /*<<< orphan*/  COEX_WLPRI_TX_RSP ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtw_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rtw_dev*,int,int) ; 

__attribute__((used)) static void FUNC10(struct rtw_dev *rtwdev, bool wifi_only)
{
	struct rtw_coex *coex = &rtwdev->coex;

	FUNC0(rtwdev);
	FUNC1(rtwdev);
	FUNC5(rtwdev);
	FUNC4(rtwdev);

	/* set Tx response = Hi-Pri (ex: Transmitting ACK,BA,CTS) */
	FUNC6(rtwdev, COEX_WLPRI_TX_RSP, 1);

	/* set Tx beacon = Hi-Pri */
	FUNC6(rtwdev, COEX_WLPRI_TX_BEACON, 1);

	/* set Tx beacon queue = Hi-Pri */
	FUNC6(rtwdev, COEX_WLPRI_TX_BEACONQ, 1);

	/* antenna config */
	if (coex->wl_rf_off) {
		FUNC3(rtwdev, true, COEX_SET_ANT_WOFF);
		FUNC9(rtwdev, COEX_SCBD_ALL, false);
		coex->stop_dm = true;
	} else if (wifi_only) {
		FUNC3(rtwdev, true, COEX_SET_ANT_WONLY);
		FUNC9(rtwdev, COEX_SCBD_ACTIVE | COEX_SCBD_SCAN,
				    true);
		coex->stop_dm = true;
	} else {
		FUNC3(rtwdev, true, COEX_SET_ANT_INIT);
		FUNC9(rtwdev, COEX_SCBD_ACTIVE | COEX_SCBD_SCAN,
				    true);
		coex->stop_dm = false;
		coex->freeze = true;
	}

	/* PTA parameter */
	FUNC7(rtwdev, 0);
	FUNC8(rtwdev, true, 0);
	FUNC2(rtwdev);
}