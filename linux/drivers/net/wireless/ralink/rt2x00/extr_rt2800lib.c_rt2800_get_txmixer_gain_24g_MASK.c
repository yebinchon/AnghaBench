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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_TXMIXER_GAIN_BG ; 
 int /*<<< orphan*/  EEPROM_TXMIXER_GAIN_BG_VAL ; 
 int /*<<< orphan*/  RT3593 ; 
 int /*<<< orphan*/  RT3883 ; 
 int FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC3(struct rt2x00_dev *rt2x00dev)
{
	u16 word;

	if (FUNC2(rt2x00dev, RT3593) ||
	    FUNC2(rt2x00dev, RT3883))
		return 0;

	word = FUNC0(rt2x00dev, EEPROM_TXMIXER_GAIN_BG);
	if ((word & 0x00ff) != 0x00ff)
		return FUNC1(word, EEPROM_TXMIXER_GAIN_BG_VAL);

	return 0;
}