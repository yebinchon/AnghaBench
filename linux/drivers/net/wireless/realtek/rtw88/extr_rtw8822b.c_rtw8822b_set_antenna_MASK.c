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
typedef  void* u8 ;
struct rtw_hal {void* antenna_rx; void* antenna_tx; } ;
struct rtw_dev {struct rtw_hal hal; } ;

/* Variables and functions */
 void* BB_PATH_AB ; 
 int /*<<< orphan*/  RTW_DBG_PHY ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,char*) ; 

__attribute__((used)) static void FUNC4(struct rtw_dev *rtwdev, u8 antenna_tx,
				 u8 antenna_rx)
{
	struct rtw_hal *hal = &rtwdev->hal;

	FUNC2(rtwdev, RTW_DBG_PHY, "config RF path, tx=0x%x rx=0x%x\n",
		antenna_tx, antenna_rx);

	if (!FUNC0(antenna_tx)) {
		FUNC3(rtwdev, "unsupport tx path, set to default path ab\n");
		antenna_tx = BB_PATH_AB;
	}
	if (!FUNC0(antenna_rx)) {
		FUNC3(rtwdev, "unsupport rx path, set to default path ab\n");
		antenna_rx = BB_PATH_AB;
	}
	hal->antenna_tx = antenna_tx;
	hal->antenna_rx = antenna_rx;
	FUNC1(rtwdev, antenna_tx, antenna_rx, false);
}