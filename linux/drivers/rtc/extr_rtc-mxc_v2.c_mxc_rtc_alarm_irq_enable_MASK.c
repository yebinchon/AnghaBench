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
struct mxc_rtc_data {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct mxc_rtc_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mxc_rtc_data*,unsigned int) ; 
 int FUNC2 (struct mxc_rtc_data*) ; 
 int FUNC3 (struct mxc_rtc_data*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, unsigned int enable)
{
	struct mxc_rtc_data *pdata = FUNC0(dev);
	int ret = FUNC2(pdata);

	if (ret)
		return ret;

	FUNC1(pdata, enable);
	return FUNC3(pdata);
}