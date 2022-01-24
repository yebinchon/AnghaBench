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
struct rtw_rfe_def {int /*<<< orphan*/  txpwr_lmt_tbl; int /*<<< orphan*/  phy_pg_tbl; } ;
struct rtw_hal {int dummy; } ;
struct rtw_dev {struct rtw_hal hal; } ;

/* Variables and functions */
 int ENODEV ; 
 struct rtw_rfe_def* FUNC0 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_hal*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_hal*) ; 

__attribute__((used)) static int FUNC6(struct rtw_dev *rtwdev)
{
	struct rtw_hal *hal = &rtwdev->hal;
	const struct rtw_rfe_def *rfe_def = FUNC0(rtwdev);

	if (!rfe_def)
		return -ENODEV;

	FUNC3(rtwdev, 0);

	FUNC2(rtwdev);
	FUNC1(rtwdev, rfe_def->phy_pg_tbl);
	FUNC1(rtwdev, rfe_def->txpwr_lmt_tbl);
	FUNC4(hal);
	FUNC5(hal);

	return 0;
}