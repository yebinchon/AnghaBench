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
struct rspi_data {int sppcr; int max_speed_hz; int /*<<< orphan*/  spcmd; scalar_t__ byte_access; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RSPI_SPBR ; 
 int /*<<< orphan*/  RSPI_SPCKD ; 
 int /*<<< orphan*/  RSPI_SPCMD0 ; 
 int /*<<< orphan*/  RSPI_SPCR ; 
 int /*<<< orphan*/  RSPI_SPCR2 ; 
 int /*<<< orphan*/  RSPI_SPDCR ; 
 int /*<<< orphan*/  RSPI_SPND ; 
 int /*<<< orphan*/  RSPI_SPPCR ; 
 int /*<<< orphan*/  RSPI_SPSCR ; 
 int /*<<< orphan*/  RSPI_SSLND ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SPCR_MSTR ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rspi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rspi_data*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rspi_data *rspi, int access_size)
{
	int spbr;

	/* Sets output mode, MOSI signal, and (optionally) loopback */
	FUNC5(rspi, rspi->sppcr, RSPI_SPPCR);

	/* Sets transfer bit rate */
	spbr = FUNC0(FUNC3(rspi->clk),
			    2 * rspi->max_speed_hz) - 1;
	FUNC5(rspi, FUNC2(spbr, 0, 255), RSPI_SPBR);

	/* Disable dummy transmission, set 16-bit word access, 1 frame */
	FUNC5(rspi, 0, RSPI_SPDCR);
	rspi->byte_access = 0;

	/* Sets RSPCK, SSL, next-access delay value */
	FUNC5(rspi, 0x00, RSPI_SPCKD);
	FUNC5(rspi, 0x00, RSPI_SSLND);
	FUNC5(rspi, 0x00, RSPI_SPND);

	/* Sets parity, interrupt mask */
	FUNC5(rspi, 0x00, RSPI_SPCR2);

	/* Resets sequencer */
	FUNC5(rspi, 0, RSPI_SPSCR);
	rspi->spcmd |= FUNC1(access_size);
	FUNC4(rspi, rspi->spcmd, RSPI_SPCMD0);

	/* Sets RSPI mode */
	FUNC5(rspi, SPCR_MSTR, RSPI_SPCR);

	return 0;
}