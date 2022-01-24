#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned short base; int mode; } ;
typedef  TYPE_1__ imm_struct ;

/* Variables and functions */
 int /*<<< orphan*/  DID_ERROR ; 
#define  IMM_NIBBLE 129 
#define  IMM_PS2 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned short,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned short,unsigned char) ; 

__attribute__((used)) static int FUNC6(imm_struct * tmp)
{
	/*
	 * The following is supposedly the IEEE 1284-1994 negotiate
	 * sequence. I have yet to obtain a copy of the above standard
	 * so this is a bit of a guess...
	 *
	 * A fair chunk of this is based on the Linux parport implementation
	 * of IEEE 1284.
	 *
	 * Return 0 if data available
	 *        1 if no data available
	 */

	unsigned short base = tmp->base;
	unsigned char a, mode;

	switch (tmp->mode) {
	case IMM_NIBBLE:
		mode = 0x00;
		break;
	case IMM_PS2:
		mode = 0x01;
		break;
	default:
		return 0;
	}

	FUNC4(base, 0x04);
	FUNC3(5);
	FUNC5(base, mode);
	FUNC3(100);
	FUNC4(base, 0x06);
	FUNC3(5);
	a = (FUNC2(base) & 0x20) ? 0 : 1;
	FUNC3(5);
	FUNC4(base, 0x07);
	FUNC3(5);
	FUNC4(base, 0x06);

	if (a) {
		FUNC1
		    ("IMM: IEEE1284 negotiate indicates no data available.\n");
		FUNC0(tmp, DID_ERROR);
	}
	return a;
}