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
struct _adapter {int eeprom_address_size; scalar_t__ surprise_removed; } ;

/* Variables and functions */
 int EEPROM_READ_OPCODE ; 
 int EE_9346CR ; 
 int _EECS ; 
 int _EEDI ; 
 int _EEDO ; 
 int _EEM0 ; 
 int _EEM1 ; 
 int _EESK ; 
 int /*<<< orphan*/  FUNC0 (struct _adapter*) ; 
 void* FUNC1 (struct _adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,int,int) ; 
 int FUNC3 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*,int,int) ; 

u16 FUNC5(struct _adapter *padapter, u16 reg) /*ReadEEprom*/
{
	u16 x;
	u16 data = 0;
	u8 tmp8_ori, tmp8_new, tmp8_clk_ori, tmp8_clk_new;

	tmp8_ori = FUNC1(padapter, 0x102502f1);
	tmp8_new = tmp8_ori & 0xf7;
	if (tmp8_ori != tmp8_new)
		FUNC2(padapter, 0x102502f1, tmp8_new);
	tmp8_clk_ori = FUNC1(padapter, 0x10250003);
	tmp8_clk_new = tmp8_clk_ori | 0x20;
	if (tmp8_clk_new != tmp8_clk_ori)
		FUNC2(padapter, 0x10250003, tmp8_clk_new);
	if (padapter->surprise_removed)
		goto out;
	/* select EEPROM, reset bits, set _EECS */
	x = FUNC1(padapter, EE_9346CR);
	if (padapter->surprise_removed)
		goto out;
	x &= ~(_EEDI | _EEDO | _EESK | _EEM0);
	x |= _EEM1 | _EECS;
	FUNC2(padapter, EE_9346CR, (unsigned char)x);
	/* write the read opcode and register number in that order
	 * The opcode is 3bits in length, reg is 6 bits long
	 */
	FUNC4(padapter, EEPROM_READ_OPCODE, 3);
	FUNC4(padapter, reg, padapter->eeprom_address_size);
	/* Now read the data (16 bits) in from the selected EEPROM word */
	data = FUNC3(padapter);
	FUNC0(padapter);
out:
	if (tmp8_clk_new != tmp8_clk_ori)
		FUNC2(padapter, 0x10250003, tmp8_clk_ori);
	if (tmp8_new != tmp8_ori)
		FUNC2(padapter, 0x102502f1, tmp8_ori);
	return data;
}