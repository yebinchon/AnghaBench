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
typedef  int u16 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  EEPROM_BBP_REG_ID ; 
 unsigned int EEPROM_BBP_SIZE ; 
 scalar_t__ EEPROM_BBP_START ; 
 int /*<<< orphan*/  EEPROM_BBP_VALUE ; 
 int FUNC0 (struct rt2x00_dev*,scalar_t__) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rt2x00_dev *rt2x00dev)
{
	unsigned int i;
	u16 eeprom;
	u8 reg_id;
	u8 value;

	if (FUNC4(FUNC3(rt2x00dev)))
		return -EACCES;

	FUNC2(rt2x00dev, 3, 0x00);
	FUNC2(rt2x00dev, 15, 0x30);
	FUNC2(rt2x00dev, 21, 0xc8);
	FUNC2(rt2x00dev, 22, 0x38);
	FUNC2(rt2x00dev, 23, 0x06);
	FUNC2(rt2x00dev, 24, 0xfe);
	FUNC2(rt2x00dev, 25, 0x0a);
	FUNC2(rt2x00dev, 26, 0x0d);
	FUNC2(rt2x00dev, 34, 0x12);
	FUNC2(rt2x00dev, 37, 0x07);
	FUNC2(rt2x00dev, 39, 0xf8);
	FUNC2(rt2x00dev, 41, 0x60);
	FUNC2(rt2x00dev, 53, 0x10);
	FUNC2(rt2x00dev, 54, 0x18);
	FUNC2(rt2x00dev, 60, 0x10);
	FUNC2(rt2x00dev, 61, 0x04);
	FUNC2(rt2x00dev, 62, 0x04);
	FUNC2(rt2x00dev, 75, 0xfe);
	FUNC2(rt2x00dev, 86, 0xfe);
	FUNC2(rt2x00dev, 88, 0xfe);
	FUNC2(rt2x00dev, 90, 0x0f);
	FUNC2(rt2x00dev, 99, 0x00);
	FUNC2(rt2x00dev, 102, 0x16);
	FUNC2(rt2x00dev, 107, 0x04);

	for (i = 0; i < EEPROM_BBP_SIZE; i++) {
		eeprom = FUNC0(rt2x00dev, EEPROM_BBP_START + i);

		if (eeprom != 0xffff && eeprom != 0x0000) {
			reg_id = FUNC1(eeprom, EEPROM_BBP_REG_ID);
			value = FUNC1(eeprom, EEPROM_BBP_VALUE);
			FUNC2(rt2x00dev, reg_id, value);
		}
	}

	return 0;
}