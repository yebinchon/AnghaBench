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
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 
 int FUNC2 (struct rt2x00_dev*,scalar_t__) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rt2x00_dev *rt2x00dev)
{
	unsigned int i;
	u16 eeprom;
	u8 reg_id;
	u8 value;

	if (FUNC4(FUNC1(rt2x00dev)))
		return -EACCES;

	FUNC0(rt2x00dev, 3, 0x02);
	FUNC0(rt2x00dev, 4, 0x19);
	FUNC0(rt2x00dev, 14, 0x1c);
	FUNC0(rt2x00dev, 15, 0x30);
	FUNC0(rt2x00dev, 16, 0xac);
	FUNC0(rt2x00dev, 18, 0x18);
	FUNC0(rt2x00dev, 19, 0xff);
	FUNC0(rt2x00dev, 20, 0x1e);
	FUNC0(rt2x00dev, 21, 0x08);
	FUNC0(rt2x00dev, 22, 0x08);
	FUNC0(rt2x00dev, 23, 0x08);
	FUNC0(rt2x00dev, 24, 0x70);
	FUNC0(rt2x00dev, 25, 0x40);
	FUNC0(rt2x00dev, 26, 0x08);
	FUNC0(rt2x00dev, 27, 0x23);
	FUNC0(rt2x00dev, 30, 0x10);
	FUNC0(rt2x00dev, 31, 0x2b);
	FUNC0(rt2x00dev, 32, 0xb9);
	FUNC0(rt2x00dev, 34, 0x12);
	FUNC0(rt2x00dev, 35, 0x50);
	FUNC0(rt2x00dev, 39, 0xc4);
	FUNC0(rt2x00dev, 40, 0x02);
	FUNC0(rt2x00dev, 41, 0x60);
	FUNC0(rt2x00dev, 53, 0x10);
	FUNC0(rt2x00dev, 54, 0x18);
	FUNC0(rt2x00dev, 56, 0x08);
	FUNC0(rt2x00dev, 57, 0x10);
	FUNC0(rt2x00dev, 58, 0x08);
	FUNC0(rt2x00dev, 61, 0x6d);
	FUNC0(rt2x00dev, 62, 0x10);

	for (i = 0; i < EEPROM_BBP_SIZE; i++) {
		eeprom = FUNC2(rt2x00dev, EEPROM_BBP_START + i);

		if (eeprom != 0xffff && eeprom != 0x0000) {
			reg_id = FUNC3(eeprom, EEPROM_BBP_REG_ID);
			value = FUNC3(eeprom, EEPROM_BBP_VALUE);
			FUNC0(rt2x00dev, reg_id, value);
		}
	}

	return 0;
}