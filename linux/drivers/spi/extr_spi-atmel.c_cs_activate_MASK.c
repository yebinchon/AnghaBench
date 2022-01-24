#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct spi_device {int chip_select; int mode; int /*<<< orphan*/  dev; TYPE_2__* master; struct atmel_spi_device* controller_state; } ;
struct atmel_spi_device {int csr; int /*<<< orphan*/  npcs_pin; } ;
struct TYPE_3__ {scalar_t__ has_wdrbt; } ;
struct atmel_spi {scalar_t__ use_cs_gpios; TYPE_1__ caps; } ;
struct TYPE_4__ {int num_chipselect; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPOL ; 
 scalar_t__ CSR0 ; 
 int /*<<< orphan*/  MODFDIS ; 
 scalar_t__ MR ; 
 int /*<<< orphan*/  MSTR ; 
 int /*<<< orphan*/  PCS ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SPI_CPOL ; 
 int /*<<< orphan*/  WDRBT ; 
 scalar_t__ FUNC3 (struct atmel_spi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct atmel_spi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct atmel_spi*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC8(struct atmel_spi *as, struct spi_device *spi)
{
	struct atmel_spi_device *asd = spi->controller_state;
	u32 mr;

	if (FUNC3(as)) {
		FUNC7(as, CSR0 + 4 * spi->chip_select, asd->csr);
		/* For the low SPI version, there is a issue that PDC transfer
		 * on CS1,2,3 needs SPI_CSR0.BITS config as SPI_CSR1,2,3.BITS
		 */
		FUNC7(as, CSR0, asd->csr);
		if (as->caps.has_wdrbt) {
			FUNC7(as, MR,
					FUNC0(PCS, ~(0x01 << spi->chip_select))
					| FUNC2(WDRBT)
					| FUNC2(MODFDIS)
					| FUNC2(MSTR));
		} else {
			FUNC7(as, MR,
					FUNC0(PCS, ~(0x01 << spi->chip_select))
					| FUNC2(MODFDIS)
					| FUNC2(MSTR));
		}

		mr = FUNC6(as, MR);
		if (as->use_cs_gpios)
			FUNC5(asd->npcs_pin, 1);
	} else {
		u32 cpol = (spi->mode & SPI_CPOL) ? FUNC2(CPOL) : 0;
		int i;
		u32 csr;

		/* Make sure clock polarity is correct */
		for (i = 0; i < spi->master->num_chipselect; i++) {
			csr = FUNC6(as, CSR0 + 4 * i);
			if ((csr ^ cpol) & FUNC2(CPOL))
				FUNC7(as, CSR0 + 4 * i,
						csr ^ FUNC2(CPOL));
		}

		mr = FUNC6(as, MR);
		mr = FUNC1(PCS, ~(1 << spi->chip_select), mr);
		if (as->use_cs_gpios && spi->chip_select != 0)
			FUNC5(asd->npcs_pin, 1);
		FUNC7(as, MR, mr);
	}

	FUNC4(&spi->dev, "activate NPCS, mr %08x\n", mr);
}