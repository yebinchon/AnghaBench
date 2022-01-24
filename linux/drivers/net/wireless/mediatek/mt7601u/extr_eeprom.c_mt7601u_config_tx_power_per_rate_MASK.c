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
typedef  int u32 ;
struct mt7601u_dev {int dummy; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t MT_EE_TX_POWER_DELTA_BW40 ; 
 scalar_t__ MT_TX_PWR_CFG_0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7601u_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7601u_dev*,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC6(struct mt7601u_dev *dev, u8 *eeprom)
{
	u32 val;
	s8 bw40_delta;
	int i;

	bw40_delta = FUNC1(eeprom[MT_EE_TX_POWER_DELTA_BW40]);

	for (i = 0; i < 5; i++) {
		val = FUNC2(eeprom + FUNC0(i));

		FUNC4(dev, bw40_delta, val, i);

		if (~val)
			FUNC5(dev, MT_TX_PWR_CFG_0 + i * 4, val);
	}

	FUNC3(dev);
}