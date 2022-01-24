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
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7316_chip_info {int config3; int dac_config; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  ADT7316_DA_EN_MODE_ABCD 130 
#define  ADT7316_DA_EN_MODE_AB_CD 129 
 int ADT7316_DA_EN_MODE_MASK ; 
#define  ADT7316_DA_EN_MODE_SINGLE 128 
 int ADT7316_DA_EN_VIA_DAC_LDAC ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 struct adt7316_chip_info* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					    struct device_attribute *attr,
					    char *buf)
{
	struct iio_dev *dev_info = FUNC0(dev);
	struct adt7316_chip_info *chip = FUNC1(dev_info);

	if (!(chip->config3 & ADT7316_DA_EN_VIA_DAC_LDAC))
		return FUNC2(buf, "manual\n");

	switch (chip->dac_config & ADT7316_DA_EN_MODE_MASK) {
	case ADT7316_DA_EN_MODE_SINGLE:
		return FUNC2(buf,
			"0 - auto at any MSB DAC writing\n");
	case ADT7316_DA_EN_MODE_AB_CD:
		return FUNC2(buf,
			"1 - auto at MSB DAC AB and CD writing\n");
	case ADT7316_DA_EN_MODE_ABCD:
		return FUNC2(buf,
			"2 - auto at MSB DAC ABCD writing\n");
	default: /* ADT7316_DA_EN_MODE_LDAC */
		return FUNC2(buf, "3 - manual\n");
	}
}