#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_1__ eeprom; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT76X0_EEPROM_SIZE ; 
 int /*<<< orphan*/  MT_EE_READ ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*) ; 
 int FUNC3 (struct mt76x02_dev*) ; 

__attribute__((used)) static int FUNC4(struct mt76x02_dev *dev)
{
	int found;

	found = FUNC0(&dev->mt76, MT76X0_EEPROM_SIZE);
	if (found < 0)
		return found;

	if (found && !FUNC2(dev))
		return 0;

	found = FUNC3(dev);
	if (found < 0)
		return found;

	return FUNC1(dev, 0, dev->mt76.eeprom.data,
				      MT76X0_EEPROM_SIZE, MT_EE_READ);
}