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
struct fsl_qspi {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ QUADSPI_MCR ; 
 int QUADSPI_MCR_SWRSTHD_MASK ; 
 int QUADSPI_MCR_SWRSTSD_MASK ; 
 int FUNC0 (struct fsl_qspi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_qspi*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct fsl_qspi *q)
{
	u32 reg;

	reg = FUNC0(q, q->iobase + QUADSPI_MCR);
	reg |= QUADSPI_MCR_SWRSTHD_MASK | QUADSPI_MCR_SWRSTSD_MASK;
	FUNC1(q, reg, q->iobase + QUADSPI_MCR);

	/*
	 * The minimum delay : 1 AHB + 2 SFCK clocks.
	 * Delay 1 us is enough.
	 */
	FUNC2(1);

	reg &= ~(QUADSPI_MCR_SWRSTHD_MASK | QUADSPI_MCR_SWRSTSD_MASK);
	FUNC1(q, reg, q->iobase + QUADSPI_MCR);
}