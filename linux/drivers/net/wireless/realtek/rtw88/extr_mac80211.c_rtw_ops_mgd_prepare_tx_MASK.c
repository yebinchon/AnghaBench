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
typedef  int /*<<< orphan*/  u16 ;
struct rtw_dev {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  COEX_ASSOCIATE_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif,
				   u16 duration)
{
	struct rtw_dev *rtwdev = hw->priv;

	FUNC0(&rtwdev->mutex);
	FUNC2(rtwdev, COEX_ASSOCIATE_START);
	FUNC1(&rtwdev->mutex);
}