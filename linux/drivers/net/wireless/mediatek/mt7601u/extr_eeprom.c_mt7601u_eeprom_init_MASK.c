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
struct mt7601u_dev {TYPE_1__* ee; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ lna_gain; scalar_t__ ref_temp; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MT7601U_EEPROM_SIZE ; 
 scalar_t__ MT7601U_EE_MAX_VER ; 
 size_t MT_EE_LNA_GAIN ; 
 int MT_EE_MAC_ADDR ; 
 int /*<<< orphan*/  MT_EE_READ ; 
 size_t MT_EE_REF_TEMP ; 
 size_t MT_EE_VERSION_EE ; 
 size_t MT_EE_VERSION_FAE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7601u_dev*,scalar_t__*) ; 
 int FUNC6 (struct mt7601u_dev*) ; 
 int FUNC7 (struct mt7601u_dev*,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7601u_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (struct mt7601u_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct mt7601u_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (struct mt7601u_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (struct mt7601u_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (struct mt7601u_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (struct mt7601u_dev*,scalar_t__*) ; 

int
FUNC15(struct mt7601u_dev *dev)
{
	u8 *eeprom;
	int i, ret;

	ret = FUNC6(dev);
	if (ret)
		return ret;

	dev->ee = FUNC2(dev->dev, sizeof(*dev->ee), GFP_KERNEL);
	if (!dev->ee)
		return -ENOMEM;

	eeprom = FUNC4(MT7601U_EEPROM_SIZE, GFP_KERNEL);
	if (!eeprom)
		return -ENOMEM;

	for (i = 0; i + 16 <= MT7601U_EEPROM_SIZE; i += 16) {
		ret = FUNC7(dev, i, eeprom + i, MT_EE_READ);
		if (ret)
			goto out;
	}

	if (eeprom[MT_EE_VERSION_EE] > MT7601U_EE_MAX_VER)
		FUNC1(dev->dev,
			 "Warning: unsupported EEPROM version %02hhx\n",
			 eeprom[MT_EE_VERSION_EE]);
	FUNC0(dev->dev, "EEPROM ver:%02hhx fae:%02hhx\n",
		 eeprom[MT_EE_VERSION_EE], eeprom[MT_EE_VERSION_FAE]);

	FUNC12(dev, eeprom + MT_EE_MAC_ADDR);
	FUNC10(dev, eeprom);
	FUNC9(dev, eeprom);
	FUNC11(dev, eeprom);
	FUNC13(dev, eeprom);
	FUNC14(dev, eeprom);
	dev->ee->ref_temp = eeprom[MT_EE_REF_TEMP];
	dev->ee->lna_gain = eeprom[MT_EE_LNA_GAIN];

	FUNC5(dev, eeprom);

	FUNC8(dev, eeprom);
out:
	FUNC3(eeprom);
	return ret;
}