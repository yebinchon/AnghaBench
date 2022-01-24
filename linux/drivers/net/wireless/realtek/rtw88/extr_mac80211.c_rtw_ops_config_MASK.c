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
typedef  int u32 ;
struct rtw_dev {int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int flags; } ;
struct ieee80211_hw {TYPE_1__ conf; struct rtw_dev* priv; } ;

/* Variables and functions */
 int IEEE80211_CONF_CHANGE_CHANNEL ; 
 int IEEE80211_CONF_CHANGE_IDLE ; 
 int IEEE80211_CONF_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,char*) ; 
 int FUNC4 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *hw, u32 changed)
{
	struct rtw_dev *rtwdev = hw->priv;
	int ret = 0;

	FUNC0(&rtwdev->mutex);

	if (changed & IEEE80211_CONF_CHANGE_IDLE) {
		if (hw->conf.flags & IEEE80211_CONF_IDLE) {
			FUNC2(rtwdev);
		} else {
			ret = FUNC4(rtwdev);
			if (ret) {
				FUNC3(rtwdev, "failed to leave idle state\n");
				goto out;
			}
		}
	}

	if (changed & IEEE80211_CONF_CHANGE_CHANNEL)
		FUNC5(rtwdev);

out:
	FUNC1(&rtwdev->mutex);
	return ret;
}