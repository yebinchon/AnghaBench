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
struct TYPE_2__ {int /*<<< orphan*/  rcr; } ;
struct rtw_dev {int /*<<< orphan*/  watch_dog_work; int /*<<< orphan*/  hw; TYPE_1__ hal; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_RCR ; 
 int /*<<< orphan*/  RTW_FLAG_RUNNING ; 
 int /*<<< orphan*/  RTW_WATCH_DOG_DELAY_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct rtw_dev *rtwdev)
{
	int ret;

	ret = FUNC2(rtwdev);
	if (ret)
		return ret;

	FUNC3(rtwdev);

	/* rcr reset after powered on */
	FUNC4(rtwdev, REG_RCR, rtwdev->hal.rcr);

	FUNC0(rtwdev->hw, &rtwdev->watch_dog_work,
				     RTW_WATCH_DOG_DELAY_TIME);

	FUNC1(rtwdev, RTW_FLAG_RUNNING);

	return 0;
}