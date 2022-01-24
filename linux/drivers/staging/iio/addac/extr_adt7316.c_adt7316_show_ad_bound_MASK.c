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
typedef  scalar_t__ u8 ;
struct iio_dev_attr {scalar_t__ address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* read ) (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ;int /*<<< orphan*/  client; } ;
struct adt7316_chip_info {int id; int config1; TYPE_1__ bus; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ ADT7316_EX_TEMP_LOW ; 
 int ADT7516_SEL_AIN1_2_EX_TEMP_MASK ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  EPERM ; 
 int ID_ADT73XX ; 
 int ID_ADT75XX ; 
 int ID_FAMILY_MASK ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 struct adt7316_chip_info* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 struct iio_dev_attr* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static inline ssize_t FUNC5(struct device *dev,
					    struct device_attribute *attr,
					    char *buf)
{
	struct iio_dev_attr *this_attr = FUNC4(attr);
	struct iio_dev *dev_info = FUNC0(dev);
	struct adt7316_chip_info *chip = FUNC1(dev_info);
	u8 val;
	int data;
	int ret;

	if ((chip->id & ID_FAMILY_MASK) == ID_ADT73XX &&
	    this_attr->address > ADT7316_EX_TEMP_LOW)
		return -EPERM;

	ret = chip->bus.read(chip->bus.client, this_attr->address, &val);
	if (ret)
		return -EIO;

	data = (int)val;

	if (!((chip->id & ID_FAMILY_MASK) == ID_ADT75XX &&
	      (chip->config1 & ADT7516_SEL_AIN1_2_EX_TEMP_MASK) == 0)) {
		if (data & 0x80)
			data -= 256;
	}

	return FUNC2(buf, "%d\n", data);
}