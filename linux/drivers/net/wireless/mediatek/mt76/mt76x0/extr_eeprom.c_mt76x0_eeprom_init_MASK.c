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
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_3__ {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ eeprom; int /*<<< orphan*/  dev; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;

/* Variables and functions */
 int MT76X0U_EE_MAX_VER ; 
 scalar_t__ MT_EE_MAC_ADDR ; 
 int /*<<< orphan*/  MT_EE_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,scalar_t__) ; 
 int FUNC4 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*) ; 

int FUNC8(struct mt76x02_dev *dev)
{
	u8 version, fae;
	u16 data;
	int err;

	err = FUNC4(dev);
	if (err < 0)
		return err;

	data = FUNC2(dev, MT_EE_VERSION);
	version = data >> 8;
	fae = data;

	if (version > MT76X0U_EE_MAX_VER)
		FUNC1(dev->mt76.dev,
			 "Warning: unsupported EEPROM version %02hhx\n",
			 version);
	FUNC0(dev->mt76.dev, "EEPROM ver:%02hhx fae:%02hhx\n",
		 version, fae);

	FUNC3(dev, dev->mt76.eeprom.data + MT_EE_MAC_ADDR);
	FUNC5(dev);
	FUNC6(dev);
	FUNC7(dev);

	return 0;
}