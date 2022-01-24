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
struct adapter {int dummy; } ;

/* Variables and functions */
 int BOOT_FROM_EEPROM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  REG_9346CR ; 
 int FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 

u8 FUNC2(struct adapter *padapter)
{
	u8 size = 0;
	u32 cr;

	cr = FUNC1(padapter, REG_9346CR);
	/*  6: EEPROM used is 93C46, 4: boot from E-Fuse. */
	size = (cr & BOOT_FROM_EEPROM) ? 6 : 4;

	FUNC0("EEPROM type is %s\n", size == 4 ? "E-FUSE" : "93C46");

	return size;
}