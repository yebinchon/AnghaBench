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
typedef  unsigned long uint8_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adp8870_bl {int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADP8870_CFGR ; 
 int /*<<< orphan*/  ADP8870_MDCR ; 
 unsigned long CFGR_BLV_MASK ; 
 unsigned long CFGR_BLV_SHIFT ; 
 int /*<<< orphan*/  CMP_AUTOEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 struct adp8870_bl* FUNC4 (struct device*) ; 
 int FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct adp8870_bl *data = FUNC4(dev);
	unsigned long val;
	uint8_t reg_val;
	int ret;

	ret = FUNC5(buf, 10, &val);
	if (ret)
		return ret;

	if (val == 0) {
		/* Enable automatic ambient light sensing */
		FUNC2(data->client, ADP8870_MDCR, CMP_AUTOEN);
	} else if ((val > 0) && (val < 6)) {
		/* Disable automatic ambient light sensing */
		FUNC0(data->client, ADP8870_MDCR, CMP_AUTOEN);

		/* Set user supplied ambient light zone */
		FUNC6(&data->lock);
		ret = FUNC1(data->client, ADP8870_CFGR, &reg_val);
		if (!ret) {
			reg_val &= ~(CFGR_BLV_MASK << CFGR_BLV_SHIFT);
			reg_val |= (val - 1) << CFGR_BLV_SHIFT;
			FUNC3(data->client, ADP8870_CFGR, reg_val);
		}
		FUNC7(&data->lock);
	}

	return count;
}