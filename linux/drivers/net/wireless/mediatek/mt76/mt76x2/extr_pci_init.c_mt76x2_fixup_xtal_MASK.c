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
typedef  int u16 ;
struct mt76x02_dev {int dummy; } ;
typedef  int s8 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_EE_NIC_CONF_2 ; 
 int /*<<< orphan*/  MT_EE_NIC_CONF_2_XTAL_OPTION ; 
 int /*<<< orphan*/  MT_EE_XTAL_TRIM_1 ; 
 int /*<<< orphan*/  MT_EE_XTAL_TRIM_2 ; 
 int /*<<< orphan*/  MT_XO_CTRL5 ; 
 int /*<<< orphan*/  MT_XO_CTRL5_C2_VAL ; 
 int /*<<< orphan*/  MT_XO_CTRL6 ; 
 int /*<<< orphan*/  MT_XO_CTRL6_C2_CTRL ; 
 int /*<<< orphan*/  MT_XO_CTRL7 ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mt76x02_dev *dev)
{
	u16 eep_val;
	s8 offset = 0;

	eep_val = FUNC4(dev, MT_EE_XTAL_TRIM_2);

	offset = eep_val & 0x7f;
	if ((eep_val & 0xff) == 0xff)
		offset = 0;
	else if (eep_val & 0x80)
		offset = 0 - offset;

	eep_val >>= 8;
	if (eep_val == 0x00 || eep_val == 0xff) {
		eep_val = FUNC4(dev, MT_EE_XTAL_TRIM_1);
		eep_val &= 0xff;

		if (eep_val == 0x00 || eep_val == 0xff)
			eep_val = 0x14;
	}

	eep_val &= 0x7f;
	FUNC1(dev, MT_XO_CTRL5, MT_XO_CTRL5_C2_VAL, eep_val + offset);
	FUNC2(dev, MT_XO_CTRL6, MT_XO_CTRL6_C2_CTRL);

	eep_val = FUNC4(dev, MT_EE_NIC_CONF_2);
	switch (FUNC0(MT_EE_NIC_CONF_2_XTAL_OPTION, eep_val)) {
	case 0:
		FUNC3(dev, MT_XO_CTRL7, 0x5c1fee80);
		break;
	case 1:
		FUNC3(dev, MT_XO_CTRL7, 0x5c1feed0);
		break;
	default:
		break;
	}
}