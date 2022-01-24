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
typedef  int /*<<< orphan*/  u32 ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP2_MCSPI_CHCONF_DMAR ; 
 int /*<<< orphan*/  OMAP2_MCSPI_CHCONF_DMAW ; 
 int /*<<< orphan*/  FUNC0 (struct spi_device const*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_device const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(const struct spi_device *spi,
		int is_read, int enable)
{
	u32 l, rw;

	l = FUNC0(spi);

	if (is_read) /* 1 is read, 0 write */
		rw = OMAP2_MCSPI_CHCONF_DMAR;
	else
		rw = OMAP2_MCSPI_CHCONF_DMAW;

	if (enable)
		l |= rw;
	else
		l &= ~rw;

	FUNC1(spi, l);
}