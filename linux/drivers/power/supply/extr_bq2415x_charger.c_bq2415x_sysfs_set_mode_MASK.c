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
struct bq2415x_device {int automode; int reported_mode; } ;
typedef  size_t ssize_t ;
typedef  enum bq2415x_mode { ____Placeholder_bq2415x_mode } bq2415x_mode ;

/* Variables and functions */
 int BQ2415X_MODE_BOOST ; 
 int BQ2415X_MODE_DEDICATED_CHARGER ; 
 int BQ2415X_MODE_HOST_CHARGER ; 
 int BQ2415X_MODE_NONE ; 
 int BQ2415X_MODE_OFF ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct bq2415x_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct bq2415x_device*) ; 
 int FUNC2 (struct bq2415x_device*,int) ; 
 struct power_supply* FUNC3 (struct device*) ; 
 struct bq2415x_device* FUNC4 (struct power_supply*) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf,
				      size_t count)
{
	struct power_supply *psy = FUNC3(dev);
	struct bq2415x_device *bq = FUNC4(psy);
	enum bq2415x_mode mode;
	int ret = 0;

	if (FUNC5(buf, "auto", 4) == 0) {
		if (bq->automode < 0)
			return -EINVAL;
		bq->automode = 1;
		mode = bq->reported_mode;
	} else if (FUNC5(buf, "off", 3) == 0) {
		if (bq->automode > 0)
			bq->automode = 0;
		mode = BQ2415X_MODE_OFF;
	} else if (FUNC5(buf, "none", 4) == 0) {
		if (bq->automode > 0)
			bq->automode = 0;
		mode = BQ2415X_MODE_NONE;
	} else if (FUNC5(buf, "host", 4) == 0) {
		if (bq->automode > 0)
			bq->automode = 0;
		mode = BQ2415X_MODE_HOST_CHARGER;
	} else if (FUNC5(buf, "dedicated", 9) == 0) {
		if (bq->automode > 0)
			bq->automode = 0;
		mode = BQ2415X_MODE_DEDICATED_CHARGER;
	} else if (FUNC5(buf, "boost", 5) == 0) {
		if (bq->automode > 0)
			bq->automode = 0;
		mode = BQ2415X_MODE_BOOST;
	} else if (FUNC5(buf, "reset", 5) == 0) {
		FUNC0(bq);
		FUNC1(bq);
		if (bq->automode <= 0)
			return count;
		bq->automode = 1;
		mode = bq->reported_mode;
	} else {
		return -EINVAL;
	}

	ret = FUNC2(bq, mode);
	if (ret < 0)
		return ret;
	return count;
}