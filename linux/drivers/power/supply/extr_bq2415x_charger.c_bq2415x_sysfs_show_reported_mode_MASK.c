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
struct bq2415x_device {scalar_t__ automode; int reported_mode; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  BQ2415X_MODE_BOOST 132 
#define  BQ2415X_MODE_DEDICATED_CHARGER 131 
#define  BQ2415X_MODE_HOST_CHARGER 130 
#define  BQ2415X_MODE_NONE 129 
#define  BQ2415X_MODE_OFF 128 
 int /*<<< orphan*/  EINVAL ; 
 struct power_supply* FUNC0 (struct device*) ; 
 struct bq2415x_device* FUNC1 (struct power_supply*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
						struct device_attribute *attr,
						char *buf)
{
	struct power_supply *psy = FUNC0(dev);
	struct bq2415x_device *bq = FUNC1(psy);

	if (bq->automode < 0)
		return -EINVAL;

	switch (bq->reported_mode) {
	case BQ2415X_MODE_OFF:
		return FUNC2(buf, "off\n");
	case BQ2415X_MODE_NONE:
		return FUNC2(buf, "none\n");
	case BQ2415X_MODE_HOST_CHARGER:
		return FUNC2(buf, "host\n");
	case BQ2415X_MODE_DEDICATED_CHARGER:
		return FUNC2(buf, "dedicated\n");
	case BQ2415X_MODE_BOOST:
		return FUNC2(buf, "boost\n");
	}

	return -EINVAL;
}