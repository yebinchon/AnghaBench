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
typedef  int /*<<< orphan*/  u32 ;
struct lpc18xx_eeprom_dev {unsigned int size; scalar_t__ val_bytes; scalar_t__ mem_base; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int LPC18XX_EEPROM_PAGE_SIZE ; 
 int /*<<< orphan*/  LPC18XX_EEPROM_PWRDWN ; 
 int /*<<< orphan*/  LPC18XX_EEPROM_PWRDWN_NO ; 
 int /*<<< orphan*/  LPC18XX_EEPROM_PWRDWN_YES ; 
 int FUNC0 (struct lpc18xx_eeprom_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpc18xx_eeprom_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(void *context, unsigned int reg,
				       void *val, size_t bytes)
{
	struct lpc18xx_eeprom_dev *eeprom = context;
	unsigned int offset = reg;
	int ret;

	/*
	 * The last page contains the EEPROM initialization data and is not
	 * writable.
	 */
	if ((reg > eeprom->size - LPC18XX_EEPROM_PAGE_SIZE) ||
			(reg + bytes > eeprom->size - LPC18XX_EEPROM_PAGE_SIZE))
		return -EINVAL;


	FUNC1(eeprom, LPC18XX_EEPROM_PWRDWN,
			      LPC18XX_EEPROM_PWRDWN_NO);

	/* Wait 100 us while the EEPROM wakes up */
	FUNC2(100, 200);

	while (bytes) {
		FUNC3(*(u32 *)val, eeprom->mem_base + offset);
		ret = FUNC0(eeprom);
		if (ret < 0)
			return ret;

		bytes -= eeprom->val_bytes;
		val += eeprom->val_bytes;
		offset += eeprom->val_bytes;
	}

	FUNC1(eeprom, LPC18XX_EEPROM_PWRDWN,
			      LPC18XX_EEPROM_PWRDWN_YES);

	return 0;
}