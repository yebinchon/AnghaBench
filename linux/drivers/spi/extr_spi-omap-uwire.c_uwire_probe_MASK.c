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
struct TYPE_2__ {int /*<<< orphan*/  txrx_bufs; int /*<<< orphan*/  setup_transfer; int /*<<< orphan*/  chipselect; struct spi_master* master; } ;
struct uwire_spi {TYPE_1__ bitbang; int /*<<< orphan*/  ck; } ;
struct spi_master {int mode_bits; int bus_num; int num_chipselect; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  setup; int /*<<< orphan*/  flags; int /*<<< orphan*/  bits_per_word_mask; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  SPI_MASTER_HALF_DUPLEX ; 
 int /*<<< orphan*/  UWIRE_BASE_PHYS ; 
 int /*<<< orphan*/  UWIRE_IO_SIZE ; 
 int /*<<< orphan*/  UWIRE_SR3 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct uwire_spi*) ; 
 struct spi_master* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (TYPE_1__*) ; 
 struct uwire_spi* FUNC11 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC12 (struct spi_master*) ; 
 int /*<<< orphan*/  uwire_base ; 
 int /*<<< orphan*/  uwire_chipselect ; 
 int /*<<< orphan*/  uwire_cleanup ; 
 int uwire_idx_shift ; 
 int /*<<< orphan*/  FUNC13 (struct uwire_spi*) ; 
 int /*<<< orphan*/  uwire_setup ; 
 int /*<<< orphan*/  uwire_setup_transfer ; 
 int /*<<< orphan*/  uwire_txrx ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct spi_master	*master;
	struct uwire_spi	*uwire;
	int			status;

	master = FUNC9(&pdev->dev, sizeof *uwire);
	if (!master)
		return -ENODEV;

	uwire = FUNC11(master);

	uwire_base = FUNC7(&pdev->dev, UWIRE_BASE_PHYS, UWIRE_IO_SIZE);
	if (!uwire_base) {
		FUNC5(&pdev->dev, "can't ioremap UWIRE\n");
		FUNC12(master);
		return -ENOMEM;
	}

	FUNC8(pdev, uwire);

	uwire->ck = FUNC6(&pdev->dev, "fck");
	if (FUNC0(uwire->ck)) {
		status = FUNC1(uwire->ck);
		FUNC5(&pdev->dev, "no functional clock?\n");
		FUNC12(master);
		return status;
	}
	FUNC3(uwire->ck);

	if (FUNC4())
		uwire_idx_shift = 1;
	else
		uwire_idx_shift = 2;

	FUNC14(UWIRE_SR3, 1);

	/* the spi->mode bits understood by this driver: */
	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH;
	master->bits_per_word_mask = FUNC2(1, 16);
	master->flags = SPI_MASTER_HALF_DUPLEX;

	master->bus_num = 2;	/* "official" */
	master->num_chipselect = 4;
	master->setup = uwire_setup;
	master->cleanup = uwire_cleanup;

	uwire->bitbang.master = master;
	uwire->bitbang.chipselect = uwire_chipselect;
	uwire->bitbang.setup_transfer = uwire_setup_transfer;
	uwire->bitbang.txrx_bufs = uwire_txrx;

	status = FUNC10(&uwire->bitbang);
	if (status < 0) {
		FUNC13(uwire);
	}
	return status;
}