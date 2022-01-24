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
typedef  char u32 ;
struct sifive_serial_port {int dummy; } ;

/* Variables and functions */
 char SIFIVE_SERIAL_TXCTRL_NSTOP_MASK ; 
 char SIFIVE_SERIAL_TXCTRL_NSTOP_SHIFT ; 
 int /*<<< orphan*/  SIFIVE_SERIAL_TXCTRL_OFFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char FUNC1 (struct sifive_serial_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ,struct sifive_serial_port*) ; 

__attribute__((used)) static void FUNC3(struct sifive_serial_port *ssp, char nstop)
{
	u32 v;

	if (nstop < 1 || nstop > 2) {
		FUNC0(1);
		return;
	}

	v = FUNC1(ssp, SIFIVE_SERIAL_TXCTRL_OFFS);
	v &= ~SIFIVE_SERIAL_TXCTRL_NSTOP_MASK;
	v |= (nstop - 1) << SIFIVE_SERIAL_TXCTRL_NSTOP_SHIFT;
	FUNC2(v, SIFIVE_SERIAL_TXCTRL_OFFS, ssp);
}