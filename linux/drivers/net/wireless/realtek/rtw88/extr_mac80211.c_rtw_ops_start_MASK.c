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
struct rtw_dev {int /*<<< orphan*/  mutex; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct rtw_dev*) ; 

__attribute__((used)) static int FUNC3(struct ieee80211_hw *hw)
{
	struct rtw_dev *rtwdev = hw->priv;
	int ret;

	FUNC0(&rtwdev->mutex);
	ret = FUNC2(rtwdev);
	FUNC1(&rtwdev->mutex);

	return ret;
}