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
typedef  int u8 ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7746_chip_info {int config; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  AD7746_REG_CFG ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ad7746_chip_info* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,int*) ; 

__attribute__((used)) static inline ssize_t FUNC8(struct device *dev,
					 struct device_attribute *attr,
					 const char *buf,
					 size_t len,
					 u8 regval)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct ad7746_chip_info *chip = FUNC3(indio_dev);
	int ret, timeout = 10;
	bool doit;

	ret = FUNC7(buf, &doit);
	if (ret < 0)
		return ret;

	if (!doit)
		return 0;

	FUNC5(&chip->lock);
	regval |= chip->config;
	ret = FUNC2(chip->client, AD7746_REG_CFG, regval);
	if (ret < 0)
		goto unlock;

	do {
		FUNC4(20);
		ret = FUNC1(chip->client, AD7746_REG_CFG);
		if (ret < 0)
			goto unlock;

	} while ((ret == regval) && timeout--);

	FUNC6(&chip->lock);

	return len;

unlock:
	FUNC6(&chip->lock);
	return ret;
}