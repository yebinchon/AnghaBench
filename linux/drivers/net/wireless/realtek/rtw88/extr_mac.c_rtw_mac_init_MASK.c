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
struct rtw_dev {struct rtw_chip_info* chip; } ;
struct rtw_chip_info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* mac_init ) (struct rtw_dev*) ;} ;

/* Variables and functions */
 int FUNC0 (struct rtw_dev*) ; 
 int FUNC1 (struct rtw_dev*) ; 
 int FUNC2 (struct rtw_dev*) ; 

int FUNC3(struct rtw_dev *rtwdev)
{
	struct rtw_chip_info *chip = rtwdev->chip;
	int ret;

	ret = FUNC1(rtwdev);
	if (ret)
		return ret;

	ret = chip->ops->mac_init(rtwdev);
	if (ret)
		return ret;

	ret = FUNC0(rtwdev);
	if (ret)
		return ret;

	return 0;
}