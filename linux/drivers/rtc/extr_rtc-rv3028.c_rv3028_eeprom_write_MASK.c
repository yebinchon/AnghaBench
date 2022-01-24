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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  RV3028_CTRL1 ; 
 int RV3028_CTRL1_EERD ; 
 int /*<<< orphan*/  RV3028_EEBUSY_POLL ; 
 int /*<<< orphan*/  RV3028_EEBUSY_TIMEOUT ; 
 int /*<<< orphan*/  RV3028_EEPROM_ADDR ; 
 int /*<<< orphan*/  RV3028_EEPROM_CMD ; 
 int RV3028_EEPROM_CMD_WRITE ; 
 int /*<<< orphan*/  RV3028_EEPROM_DATA ; 
 int /*<<< orphan*/  RV3028_STATUS ; 
 int RV3028_STATUS_EEBUSY ; 
 int FUNC0 (void*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (void*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void *priv, unsigned int offset, void *val,
			       size_t bytes)
{
	u32 status, ctrl1;
	int i, ret, err;
	u8 *buf = val;

	ret = FUNC0(priv, RV3028_CTRL1, &ctrl1);
	if (ret)
		return ret;

	if (!(ctrl1 & RV3028_CTRL1_EERD)) {
		ret = FUNC2(priv, RV3028_CTRL1,
					 RV3028_CTRL1_EERD, RV3028_CTRL1_EERD);
		if (ret)
			return ret;

		ret = FUNC1(priv, RV3028_STATUS, status,
					       !(status & RV3028_STATUS_EEBUSY),
					       RV3028_EEBUSY_POLL,
					       RV3028_EEBUSY_TIMEOUT);
		if (ret)
			goto restore_eerd;
	}

	for (i = 0; i < bytes; i++) {
		ret = FUNC3(priv, RV3028_EEPROM_ADDR, offset + i);
		if (ret)
			goto restore_eerd;

		ret = FUNC3(priv, RV3028_EEPROM_DATA, buf[i]);
		if (ret)
			goto restore_eerd;

		ret = FUNC3(priv, RV3028_EEPROM_CMD, 0x0);
		if (ret)
			goto restore_eerd;

		ret = FUNC3(priv, RV3028_EEPROM_CMD,
				   RV3028_EEPROM_CMD_WRITE);
		if (ret)
			goto restore_eerd;

		FUNC4(RV3028_EEBUSY_POLL, RV3028_EEBUSY_TIMEOUT);

		ret = FUNC1(priv, RV3028_STATUS, status,
					       !(status & RV3028_STATUS_EEBUSY),
					       RV3028_EEBUSY_POLL,
					       RV3028_EEBUSY_TIMEOUT);
		if (ret)
			goto restore_eerd;
	}

restore_eerd:
	if (!(ctrl1 & RV3028_CTRL1_EERD))
	{
		err = FUNC2(priv, RV3028_CTRL1, RV3028_CTRL1_EERD,
					 0);
		if (err && !ret)
			ret = err;
	}

	return ret;
}