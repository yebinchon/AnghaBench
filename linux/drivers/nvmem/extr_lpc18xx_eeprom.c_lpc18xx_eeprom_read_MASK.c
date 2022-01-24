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
struct lpc18xx_eeprom_dev {scalar_t__ val_bytes; scalar_t__ mem_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPC18XX_EEPROM_PWRDWN ; 
 int /*<<< orphan*/  LPC18XX_EEPROM_PWRDWN_NO ; 
 int /*<<< orphan*/  LPC18XX_EEPROM_PWRDWN_YES ; 
 int /*<<< orphan*/  FUNC0 (struct lpc18xx_eeprom_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(void *context, unsigned int offset,
			       void *val, size_t bytes)
{
	struct lpc18xx_eeprom_dev *eeprom = context;

	FUNC0(eeprom, LPC18XX_EEPROM_PWRDWN,
			      LPC18XX_EEPROM_PWRDWN_NO);

	/* Wait 100 us while the EEPROM wakes up */
	FUNC2(100, 200);

	while (bytes) {
		*(u32 *)val = FUNC1(eeprom->mem_base + offset);
		bytes -= eeprom->val_bytes;
		val += eeprom->val_bytes;
		offset += eeprom->val_bytes;
	}

	FUNC0(eeprom, LPC18XX_EEPROM_PWRDWN,
			      LPC18XX_EEPROM_PWRDWN_YES);

	return 0;
}