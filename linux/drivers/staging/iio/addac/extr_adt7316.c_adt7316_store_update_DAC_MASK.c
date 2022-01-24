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
typedef  int u8 ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* write ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  client; } ;
struct adt7316_chip_info {int config3; int dac_config; int ldac_config; int /*<<< orphan*/  ldac_pin; TYPE_1__ bus; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int ADT7316_DA_EN_MODE_LDAC ; 
 int ADT7316_DA_EN_MODE_MASK ; 
 int ADT7316_DA_EN_VIA_DAC_LDAC ; 
 int /*<<< orphan*/  ADT7316_LDAC_CONFIG ; 
 int ADT7316_LDAC_EN_DA_MASK ; 
 size_t EINVAL ; 
 size_t EIO ; 
 size_t EPERM ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct adt7316_chip_info* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (char const*,int,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					struct device_attribute *attr,
					const char *buf,
					size_t len)
{
	struct iio_dev *dev_info = FUNC0(dev);
	struct adt7316_chip_info *chip = FUNC2(dev_info);
	u8 ldac_config;
	u8 data;
	int ret;

	if (chip->config3 & ADT7316_DA_EN_VIA_DAC_LDAC) {
		if ((chip->dac_config & ADT7316_DA_EN_MODE_MASK) !=
			ADT7316_DA_EN_MODE_LDAC)
			return -EPERM;

		ret = FUNC3(buf, 16, &data);
		if (ret || data > ADT7316_LDAC_EN_DA_MASK)
			return -EINVAL;

		ldac_config = chip->ldac_config & (~ADT7316_LDAC_EN_DA_MASK);
		ldac_config |= data;

		ret = chip->bus.write(chip->bus.client, ADT7316_LDAC_CONFIG,
			ldac_config);
		if (ret)
			return -EIO;
	} else {
		FUNC1(chip->ldac_pin, 0);
		FUNC1(chip->ldac_pin, 1);
	}

	return len;
}