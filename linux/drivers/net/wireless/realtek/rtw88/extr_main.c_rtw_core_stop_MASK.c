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
struct rtw_coex {int /*<<< orphan*/  defreeze_work; int /*<<< orphan*/  bt_reenable_work; int /*<<< orphan*/  bt_relink_work; } ;
struct rtw_dev {int /*<<< orphan*/  watch_dog_work; struct rtw_coex coex; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTW_FLAG_FW_RUNNING ; 
 int /*<<< orphan*/  RTW_FLAG_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*) ; 

void FUNC3(struct rtw_dev *rtwdev)
{
	struct rtw_coex *coex = &rtwdev->coex;

	FUNC1(rtwdev, RTW_FLAG_RUNNING);
	FUNC1(rtwdev, RTW_FLAG_FW_RUNNING);

	FUNC0(&rtwdev->watch_dog_work);
	FUNC0(&coex->bt_relink_work);
	FUNC0(&coex->bt_reenable_work);
	FUNC0(&coex->defreeze_work);

	FUNC2(rtwdev);
}