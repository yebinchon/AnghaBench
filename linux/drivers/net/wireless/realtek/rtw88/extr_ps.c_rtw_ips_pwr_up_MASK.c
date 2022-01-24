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
 int /*<<< orphan*/  RTW_FLAG_INACTIVE_PS ; 
 int FUNC0 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*) ; 

__attribute__((used)) static int FUNC4(struct rtw_dev *rtwdev)
{
	int ret;

	ret = FUNC0(rtwdev);
	if (ret)
		FUNC1(rtwdev, "leave idle state failed\n");

	FUNC3(rtwdev);
	FUNC2(rtwdev, RTW_FLAG_INACTIVE_PS);

	return ret;
}