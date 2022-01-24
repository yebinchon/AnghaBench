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
struct NvRamType {int dummy; } ;

/* Variables and functions */
 int EN_EEPROM ; 
 scalar_t__ TRM_S1040_GEN_CONTROL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int FUNC2 (unsigned long,int) ; 

__attribute__((used)) static void FUNC3(struct NvRamType *eeprom, unsigned long io_port)
{
	u8 *b_eeprom = (u8 *)eeprom;
	u8 addr;

	/* Enable SEEPROM */
	FUNC1((FUNC0(io_port + TRM_S1040_GEN_CONTROL) | EN_EEPROM),
	     io_port + TRM_S1040_GEN_CONTROL);

	/* read details */
	for (addr = 0; addr < 128; addr++, b_eeprom++)
		*b_eeprom = FUNC2(io_port, addr);

	/* Disable SEEPROM */
	FUNC1((FUNC0(io_port + TRM_S1040_GEN_CONTROL) & ~EN_EEPROM),
	     io_port + TRM_S1040_GEN_CONTROL);
}