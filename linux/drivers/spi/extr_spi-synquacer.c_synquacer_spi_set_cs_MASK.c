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
typedef  int u32 ;
struct synquacer_spi {scalar_t__ regs; } ;
struct spi_device {int chip_select; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int SYNQUACER_HSSPI_DMPSEL_CS_MASK ; 
 int SYNQUACER_HSSPI_DMPSEL_CS_SHIFT ; 
 scalar_t__ SYNQUACER_HSSPI_REG_DMSTART ; 
 int FUNC0 (scalar_t__) ; 
 struct synquacer_spi* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct spi_device *spi, bool enable)
{
	struct synquacer_spi *sspi = FUNC1(spi->master);
	u32 val;

	val = FUNC0(sspi->regs + SYNQUACER_HSSPI_REG_DMSTART);
	val &= ~(SYNQUACER_HSSPI_DMPSEL_CS_MASK <<
		 SYNQUACER_HSSPI_DMPSEL_CS_SHIFT);
	val |= spi->chip_select << SYNQUACER_HSSPI_DMPSEL_CS_SHIFT;
	FUNC2(val, sspi->regs + SYNQUACER_HSSPI_REG_DMSTART);
}