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
struct wiphy {int dummy; } ;
struct rtw_hal {int /*<<< orphan*/  current_channel; } ;
struct TYPE_2__ {int /*<<< orphan*/  txpwr_regd; int /*<<< orphan*/  chplan; } ;
struct rtw_dev {TYPE_1__ regd; struct rtw_hal hal; } ;
struct regulatory_request {int /*<<< orphan*/  initiator; int /*<<< orphan*/ * alpha2; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTW_DBG_REGD ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,struct wiphy*,struct regulatory_request*) ; 
 struct ieee80211_hw* FUNC3 (struct wiphy*) ; 

void FUNC4(struct wiphy *wiphy, struct regulatory_request *request)
{
	struct ieee80211_hw *hw = FUNC3(wiphy);
	struct rtw_dev *rtwdev = hw->priv;
	struct rtw_hal *hal = &rtwdev->hal;

	FUNC2(rtwdev, wiphy, request);
	FUNC0(rtwdev, RTW_DBG_REGD,
		"get alpha2 %c%c from initiator %d, mapping to chplan 0x%x, txregd %d\n",
		request->alpha2[0], request->alpha2[1], request->initiator,
		rtwdev->regd.chplan, rtwdev->regd.txpwr_regd);

	FUNC1(rtwdev, hal->current_channel);
}