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
typedef  int /*<<< orphan*/  u16 ;
struct _adapter {int eeprom_address_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_EWDS_OPCODE ; 
 int /*<<< orphan*/  EEPROM_EWEN_OPCODE ; 
 int /*<<< orphan*/  EEPROM_WRITE_OPCODE ; 
 int EE_9346CR ; 
 int _EECS ; 
 int _EEDI ; 
 int _EEDO ; 
 int _EEM0 ; 
 int _EEM1 ; 
 int _EESK ; 
 int /*<<< orphan*/  FUNC0 (struct _adapter*) ; 
 int FUNC1 (struct _adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*) ; 
 scalar_t__ FUNC5 (struct _adapter*) ; 

void FUNC6(struct _adapter *padapter, u16 reg, u16 data)
{
	u8 x;
	u8 tmp8_ori, tmp8_new, tmp8_clk_ori, tmp8_clk_new;

	tmp8_ori = FUNC1(padapter, 0x102502f1);
	tmp8_new = tmp8_ori & 0xf7;
	if (tmp8_ori != tmp8_new)
		FUNC2(padapter, 0x102502f1, tmp8_new);
	tmp8_clk_ori = FUNC1(padapter, 0x10250003);
	tmp8_clk_new = tmp8_clk_ori | 0x20;
	if (tmp8_clk_new != tmp8_clk_ori)
		FUNC2(padapter, 0x10250003, tmp8_clk_new);
	x = FUNC1(padapter, EE_9346CR);
	x &= ~(_EEDI | _EEDO | _EESK | _EEM0);
	x |= _EEM1 | _EECS;
	FUNC2(padapter, EE_9346CR, x);
	FUNC3(padapter, EEPROM_EWEN_OPCODE, 5);
	if (padapter->eeprom_address_size == 8)	/*CF+ and SDIO*/
		FUNC3(padapter, 0, 6);
	else	/* USB */
		FUNC3(padapter, 0, 4);
	FUNC4(padapter);
	/* Erase this particular word.  Write the erase opcode and register
	 * number in that order. The opcode is 3bits in length; reg is 6
	 * bits long.
	 */
	FUNC4(padapter);
	/* write the new word to the EEPROM
	 * send the write opcode the EEPORM
	 */
	FUNC3(padapter, EEPROM_WRITE_OPCODE, 3);
	/* select which word in the EEPROM that we are writing to. */
	FUNC3(padapter, reg, padapter->eeprom_address_size);
	/* write the data to the selected EEPROM word. */
	FUNC3(padapter, data, 16);
	if (FUNC5(padapter)) {
		FUNC4(padapter);
		FUNC3(padapter, EEPROM_EWDS_OPCODE, 5);
		FUNC3(padapter, reg, 4);
		FUNC0(padapter);
	}
	if (tmp8_clk_new != tmp8_clk_ori)
		FUNC2(padapter, 0x10250003, tmp8_clk_ori);
	if (tmp8_new != tmp8_ori)
		FUNC2(padapter, 0x102502f1, tmp8_ori);
}