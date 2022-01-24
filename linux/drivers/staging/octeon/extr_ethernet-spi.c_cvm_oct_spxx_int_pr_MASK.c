#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ prtnxa; scalar_t__ abnorm; scalar_t__ spiovr; scalar_t__ clserr; scalar_t__ drwnng; scalar_t__ rsverr; scalar_t__ tpaovr; scalar_t__ diperr; scalar_t__ syncerr; scalar_t__ calerr; scalar_t__ spf; } ;
union cvmx_spxx_int_reg {TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static void FUNC1(union cvmx_spxx_int_reg spx_int_reg, int index)
{
	if (spx_int_reg.s.spf)
		FUNC0("SPI%d: SRX Spi4 interface down\n", index);
	if (spx_int_reg.s.calerr)
		FUNC0("SPI%d: SRX Spi4 Calendar table parity error\n", index);
	if (spx_int_reg.s.syncerr)
		FUNC0("SPI%d: SRX Consecutive Spi4 DIP4 errors have exceeded SPX_ERR_CTL[ERRCNT]\n",
		       index);
	if (spx_int_reg.s.diperr)
		FUNC0("SPI%d: SRX Spi4 DIP4 error\n", index);
	if (spx_int_reg.s.tpaovr)
		FUNC0("SPI%d: SRX Selected port has hit TPA overflow\n",
		       index);
	if (spx_int_reg.s.rsverr)
		FUNC0("SPI%d: SRX Spi4 reserved control word detected\n",
		       index);
	if (spx_int_reg.s.drwnng)
		FUNC0("SPI%d: SRX Spi4 receive FIFO drowning/overflow\n",
		       index);
	if (spx_int_reg.s.clserr)
		FUNC0("SPI%d: SRX Spi4 packet closed on non-16B alignment without EOP\n",
		       index);
	if (spx_int_reg.s.spiovr)
		FUNC0("SPI%d: SRX Spi4 async FIFO overflow\n", index);
	if (spx_int_reg.s.abnorm)
		FUNC0("SPI%d: SRX Abnormal packet termination (ERR bit)\n",
		       index);
	if (spx_int_reg.s.prtnxa)
		FUNC0("SPI%d: SRX Port out of range\n", index);
}