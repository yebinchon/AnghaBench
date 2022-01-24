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
typedef  unsigned int u16 ;
typedef  int s16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (short) ; 
 int FUNC2 (unsigned int) ; 

__attribute__((used)) static s16 FUNC3(u16 linear)
{
	short exp = 0;
	unsigned int mantisa;
	int app, dBd;

	if (FUNC0(!linear))
		return -10000;

	mantisa = linear;

	exp = FUNC2(mantisa) - 16;
	if (exp > 0)
		mantisa >>= exp;
	else
		mantisa <<= FUNC1(exp);

	if (mantisa <= 0xb800)
		app = (mantisa + (mantisa >> 3) + (mantisa >> 4) - 0x9600);
	else
		app = (mantisa - (mantisa >> 3) - (mantisa >> 6) - 0x5a00);
	if (app < 0)
		app = 0;

	dBd = ((15 + exp) << 15) + app;
	dBd = (dBd << 2) + (dBd << 1) + (dBd >> 6) + (dBd >> 7);
	dBd = (dBd >> 10);

	return dBd;
}