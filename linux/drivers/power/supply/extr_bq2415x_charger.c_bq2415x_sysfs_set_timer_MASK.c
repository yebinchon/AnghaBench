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
struct power_supply {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bq2415x_device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  BQ2415X_TIMER_RESET ; 
 int FUNC0 (struct bq2415x_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bq2415x_device*,int) ; 
 struct power_supply* FUNC2 (struct device*) ; 
 struct bq2415x_device* FUNC3 (struct power_supply*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				       struct device_attribute *attr,
				       const char *buf,
				       size_t count)
{
	struct power_supply *psy = FUNC2(dev);
	struct bq2415x_device *bq = FUNC3(psy);
	int ret = 0;

	if (FUNC4(buf, "auto", 4) == 0)
		FUNC1(bq, 1);
	else if (FUNC4(buf, "off", 3) == 0)
		FUNC1(bq, 0);
	else
		ret = FUNC0(bq, BQ2415X_TIMER_RESET);

	if (ret < 0)
		return ret;
	return count;
}