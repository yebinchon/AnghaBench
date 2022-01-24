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
struct spi_transfer {int bits_per_word; int speed_hz; } ;
struct spi_device {int bits_per_word; int max_speed_hz; int /*<<< orphan*/  chip_select; int /*<<< orphan*/  master; } ;
struct fsl_espi_cs {int hw_mode; } ;
struct fsl_espi {int /*<<< orphan*/  spibrg; } ;

/* Variables and functions */
 int CSMODE_DIV16 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fsl_espi*,int /*<<< orphan*/ ,int) ; 
 struct fsl_espi_cs* FUNC5 (struct spi_device*) ; 
 struct fsl_espi* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct spi_device *spi,
					struct spi_transfer *t)
{
	struct fsl_espi *espi = FUNC6(spi->master);
	int bits_per_word = t ? t->bits_per_word : spi->bits_per_word;
	u32 pm, hz = t ? t->speed_hz : spi->max_speed_hz;
	struct fsl_espi_cs *cs = FUNC5(spi);
	u32 hw_mode_old = cs->hw_mode;

	/* mask out bits we are going to set */
	cs->hw_mode &= ~(FUNC0(0xF) | CSMODE_DIV16 | FUNC1(0xF));

	cs->hw_mode |= FUNC0(bits_per_word - 1);

	pm = FUNC2(espi->spibrg, hz * 4) - 1;

	if (pm > 15) {
		cs->hw_mode |= CSMODE_DIV16;
		pm = FUNC2(espi->spibrg, hz * 16 * 4) - 1;
	}

	cs->hw_mode |= FUNC1(pm);

	/* don't write the mode register if the mode doesn't change */
	if (cs->hw_mode != hw_mode_old)
		FUNC4(espi, FUNC3(spi->chip_select),
				   cs->hw_mode);
}