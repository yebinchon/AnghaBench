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

/* Variables and functions */
 int SE2CLK ; 
 int SE2CS ; 
 int SE2DI ; 
 int SE2DO ; 
 scalar_t__ TUL_NVRAM ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(unsigned long base, u8 addr, u16 val)
{
	u8 rb;
	u8 instr;
	int i;

	instr = (u8) (addr | 0x40);
	FUNC1(base, instr);	/* WRITE INSTR */
	for (i = 15; i >= 0; i--) {
		if (val & 0x8000)
			FUNC2(SE2CS | SE2DO, base + TUL_NVRAM);	/* -CLK+dataBit 1 */
		else
			FUNC2(SE2CS, base + TUL_NVRAM);		/* -CLK+dataBit 0 */
		FUNC3(30);
		FUNC2(SE2CS | SE2CLK, base + TUL_NVRAM);		/* +CLK */
		FUNC3(30);
		val <<= 1;
	}
	FUNC2(SE2CS, base + TUL_NVRAM);				/* -CLK */
	FUNC3(30);
	FUNC2(0, base + TUL_NVRAM);				/* -CS  */
	FUNC3(30);

	FUNC2(SE2CS, base + TUL_NVRAM);				/* +CS  */
	FUNC3(30);

	for (;;) {
		FUNC2(SE2CS | SE2CLK, base + TUL_NVRAM);		/* +CLK */
		FUNC3(30);
		FUNC2(SE2CS, base + TUL_NVRAM);			/* -CLK */
		FUNC3(30);
		if ((rb = FUNC0(base + TUL_NVRAM)) & SE2DI)
			break;	/* write complete */
	}
	FUNC2(0, base + TUL_NVRAM);				/* -CS */
}