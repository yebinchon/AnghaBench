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
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* read ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ;int /*<<< orphan*/  client; } ;
struct adt7316_chip_info {TYPE_1__ bus; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADT7316_SPI_LOCK_STAT ; 
 int /*<<< orphan*/  EIO ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 struct adt7316_chip_info* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				     struct device_attribute *attr,
				     char *buf)
{
	struct iio_dev *dev_info = FUNC0(dev);
	struct adt7316_chip_info *chip = FUNC1(dev_info);
	u8 stat;
	int ret;

	ret = chip->bus.read(chip->bus.client, ADT7316_SPI_LOCK_STAT, &stat);
	if (ret)
		return -EIO;

	if (stat)
		return FUNC2(buf, "spi\n");

	return FUNC2(buf, "i2c\n");
}