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
 int EALREADY ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,char*) ; 
 int FUNC1 (struct rtw_dev*) ; 
 int FUNC2 (struct rtw_dev*,int) ; 
 int FUNC3 (struct rtw_dev*) ; 

int FUNC4(struct rtw_dev *rtwdev)
{
	int ret = 0;

	ret = FUNC3(rtwdev);
	if (ret)
		goto err;

	ret = FUNC2(rtwdev, true);
	if (ret == -EALREADY) {
		FUNC2(rtwdev, false);
		ret = FUNC2(rtwdev, true);
		if (ret)
			goto err;
	} else if (ret) {
		goto err;
	}

	ret = FUNC1(rtwdev);
	if (ret)
		goto err;

	return 0;

err:
	FUNC0(rtwdev, "mac power on failed");
	return ret;
}