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

/* Variables and functions */
 unsigned long AMCC_OP_REG_MCSR_NVCMD ; 
 unsigned long AMCC_OP_REG_MCSR_NVDATA ; 
 unsigned short NVCMD_BEGIN_READ ; 
 unsigned short NVCMD_LOAD_HIGH ; 
 unsigned short NVCMD_LOAD_LOW ; 
 scalar_t__ NVRAM_USER_DATA_START ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned char FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short,unsigned long) ; 

__attribute__((used)) static unsigned short FUNC3(unsigned long iobase,
					    unsigned short addr)
{
	unsigned short val = 0;
	unsigned char tmp;
	unsigned char i;

	/* Add the offset to the start of the user data */
	addr += NVRAM_USER_DATA_START;

	for (i = 0; i < 2; i++) {
		/* Load the low 8 bit address */
		FUNC2(NVCMD_LOAD_LOW, iobase + AMCC_OP_REG_MCSR_NVCMD);
		FUNC0(iobase);
		FUNC2((addr + i) & 0xff, iobase + AMCC_OP_REG_MCSR_NVDATA);
		FUNC0(iobase);

		/* Load the high 8 bit address */
		FUNC2(NVCMD_LOAD_HIGH, iobase + AMCC_OP_REG_MCSR_NVCMD);
		FUNC0(iobase);
		FUNC2(((addr + i) >> 8) & 0xff,
		     iobase + AMCC_OP_REG_MCSR_NVDATA);
		FUNC0(iobase);

		/* Read the eeprom data byte */
		FUNC2(NVCMD_BEGIN_READ, iobase + AMCC_OP_REG_MCSR_NVCMD);
		FUNC0(iobase);
		tmp = FUNC1(iobase + AMCC_OP_REG_MCSR_NVDATA);
		FUNC0(iobase);

		if (i == 0)
			val |= tmp;
		else
			val |= (tmp << 8);
	}

	return val;
}