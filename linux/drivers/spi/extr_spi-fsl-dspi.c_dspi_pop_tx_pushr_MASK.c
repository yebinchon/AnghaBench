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
typedef  int u16 ;
struct fsl_dspi {int tx_cmd; scalar_t__ len; int /*<<< orphan*/  ctlr; } ;

/* Variables and functions */
 int SPI_PUSHR_CMD_CONT ; 
 int FUNC0 (struct fsl_dspi*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(struct fsl_dspi *dspi)
{
	u16 cmd = dspi->tx_cmd, data = FUNC0(dspi);

	if (FUNC1(dspi->ctlr))
		return data;

	if (dspi->len > 0)
		cmd |= SPI_PUSHR_CMD_CONT;
	return cmd << 16 | data;
}