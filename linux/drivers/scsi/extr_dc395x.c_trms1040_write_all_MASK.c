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
 unsigned long TRM_S1040_GEN_CONTROL ; 
 unsigned long TRM_S1040_GEN_NVRAM ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int,int) ; 

__attribute__((used)) static void FUNC5(struct NvRamType *eeprom, unsigned long io_port)
{
	u8 *b_eeprom = (u8 *)eeprom;
	u8 addr;

	/* Enable SEEPROM */
	FUNC1((FUNC0(io_port + TRM_S1040_GEN_CONTROL) | EN_EEPROM),
	     io_port + TRM_S1040_GEN_CONTROL);

	/* write enable */
	FUNC4(io_port, 0x04, 0xFF);
	FUNC1(0, io_port + TRM_S1040_GEN_NVRAM);
	FUNC3(io_port);

	/* write */
	for (addr = 0; addr < 128; addr++, b_eeprom++)
		FUNC2(io_port, addr, *b_eeprom);

	/* write disable */
	FUNC4(io_port, 0x04, 0x00);
	FUNC1(0, io_port + TRM_S1040_GEN_NVRAM);
	FUNC3(io_port);

	/* Disable SEEPROM */
	FUNC1((FUNC0(io_port + TRM_S1040_GEN_CONTROL) & ~EN_EEPROM),
	     io_port + TRM_S1040_GEN_CONTROL);
}