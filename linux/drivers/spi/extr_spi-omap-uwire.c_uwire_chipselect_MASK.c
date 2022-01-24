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
typedef  int u16 ;
struct uwire_state {int /*<<< orphan*/  div1_idx; } ;
struct spi_device {int chip_select; int mode; struct uwire_state* controller_state; } ;

/* Variables and functions */
 int BITBANG_CS_ACTIVE ; 
 int BITBANG_CS_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSRB ; 
 int CS_CMD ; 
 int SPI_CPOL ; 
 int /*<<< orphan*/  UWIRE_CSR ; 
 int /*<<< orphan*/  UWIRE_SR4 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct spi_device *spi, int value)
{
	struct	uwire_state *ust = spi->controller_state;
	u16	w;
	int	old_cs;


	FUNC0(FUNC4(CSRB, 0, 0));

	w = FUNC1(UWIRE_CSR);
	old_cs = (w >> 10) & 0x03;
	if (value == BITBANG_CS_INACTIVE || old_cs != spi->chip_select) {
		/* Deselect this CS, or the previous CS */
		w &= ~CS_CMD;
		FUNC3(UWIRE_CSR, w);
	}
	/* activate specfied chipselect */
	if (value == BITBANG_CS_ACTIVE) {
		FUNC2(ust->div1_idx);
		/* invert clock? */
		if (spi->mode & SPI_CPOL)
			FUNC3(UWIRE_SR4, 1);
		else
			FUNC3(UWIRE_SR4, 0);

		w = spi->chip_select << 10;
		w |= CS_CMD;
		FUNC3(UWIRE_CSR, w);
	}
}