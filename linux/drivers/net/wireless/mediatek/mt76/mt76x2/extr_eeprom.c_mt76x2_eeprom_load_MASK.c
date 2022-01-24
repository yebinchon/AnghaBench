#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {void* data; int /*<<< orphan*/  size; } ;
struct TYPE_6__ {TYPE_2__ eeprom; TYPE_1__ otp; int /*<<< orphan*/  dev; } ;
struct mt76x02_dev {TYPE_3__ mt76; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MT7662_EEPROM_SIZE ; 
 int /*<<< orphan*/  MT_EE_READ ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*) ; 

__attribute__((used)) static int
FUNC6(struct mt76x02_dev *dev)
{
	void *efuse;
	bool found;
	int ret;

	ret = FUNC2(&dev->mt76, MT7662_EEPROM_SIZE);
	if (ret < 0)
		return ret;

	found = ret;
	if (found)
		found = !FUNC5(dev);

	dev->mt76.otp.data = FUNC0(dev->mt76.dev, MT7662_EEPROM_SIZE,
					  GFP_KERNEL);
	dev->mt76.otp.size = MT7662_EEPROM_SIZE;
	if (!dev->mt76.otp.data)
		return -ENOMEM;

	efuse = dev->mt76.otp.data;

	if (FUNC3(dev, 0, efuse, MT7662_EEPROM_SIZE,
				   MT_EE_READ))
		goto out;

	if (found) {
		FUNC4(dev, efuse);
	} else {
		/* FIXME: check if efuse data is complete */
		found = true;
		FUNC1(dev->mt76.eeprom.data, efuse, MT7662_EEPROM_SIZE);
	}

out:
	if (!found)
		return -ENOENT;

	return 0;
}