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
struct adt7316_chip_info {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADT7516_AD_SINGLE_CH_AIN3 ; 
 int /*<<< orphan*/  FUNC0 (struct adt7316_chip_info*,int /*<<< orphan*/ ,char*) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 struct adt7316_chip_info* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				 struct device_attribute *attr,
				 char *buf)
{
	struct iio_dev *dev_info = FUNC1(dev);
	struct adt7316_chip_info *chip = FUNC2(dev_info);

	return FUNC0(chip, ADT7516_AD_SINGLE_CH_AIN3, buf);
}