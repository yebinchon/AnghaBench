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
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rtw_dev*) ; 
 int FUNC1 (struct rtw_dev*) ; 
 int FUNC2 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,char*) ; 

int FUNC4(struct rtw_dev *rtwdev)
{
	int ret;

	ret = FUNC2(rtwdev);
	if (ret) {
		FUNC3(rtwdev, "failed to setup chip parameters\n");
		goto err_out;
	}

	ret = FUNC1(rtwdev);
	if (ret) {
		FUNC3(rtwdev, "failed to setup chip efuse info\n");
		goto err_out;
	}

	ret = FUNC0(rtwdev);
	if (ret) {
		FUNC3(rtwdev, "failed to setup chip board info\n");
		goto err_out;
	}

	return 0;

err_out:
	return ret;
}