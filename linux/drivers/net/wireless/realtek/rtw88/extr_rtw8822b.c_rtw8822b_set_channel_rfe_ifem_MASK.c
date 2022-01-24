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
typedef  int u8 ;
struct rtw_hal {scalar_t__ antenna_rx; scalar_t__ antenna_tx; } ;
struct rtw_dev {struct rtw_hal hal; } ;

/* Variables and functions */
 scalar_t__ BB_PATH_AB ; 
 int FUNC0 (int) ; 
 int MASKBYTE1 ; 
 int MASKLWORD ; 
 int /*<<< orphan*/  REG_RFEINV ; 
 int /*<<< orphan*/  REG_RFESEL0 ; 
 int /*<<< orphan*/  REG_RFESEL8 ; 
 int /*<<< orphan*/  REG_TRSW ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct rtw_dev *rtwdev, u8 channel)
{
	struct rtw_hal *hal = &rtwdev->hal;
	bool is_channel_2g = (channel <= 14) ? true : false;

	if (is_channel_2g) {
		/* signal source */
		FUNC1(rtwdev, REG_RFESEL0, 0xffffff, 0x745774);
		FUNC1(rtwdev, REG_RFESEL8, MASKBYTE1, 0x57);
	} else {
		/* signal source */
		FUNC1(rtwdev, REG_RFESEL0, 0xffffff, 0x477547);
		FUNC1(rtwdev, REG_RFESEL8, MASKBYTE1, 0x75);
	}

	FUNC1(rtwdev, REG_RFEINV, FUNC0(11) | FUNC0(10) | 0x3f, 0x0);

	if (is_channel_2g) {
		if (hal->antenna_rx == BB_PATH_AB ||
		    hal->antenna_tx == BB_PATH_AB) {
			/* 2TX or 2RX */
			FUNC1(rtwdev, REG_TRSW, MASKLWORD, 0xa501);
		} else if (hal->antenna_rx == hal->antenna_tx) {
			/* TXA+RXA or TXB+RXB */
			FUNC1(rtwdev, REG_TRSW, MASKLWORD, 0xa500);
		} else {
			/* TXB+RXA or TXA+RXB */
			FUNC1(rtwdev, REG_TRSW, MASKLWORD, 0xa005);
		}
	} else {
		FUNC1(rtwdev, REG_TRSW, MASKLWORD, 0xa5a5);
	}
}