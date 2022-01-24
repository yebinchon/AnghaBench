#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct spi_master {int dummy; } ;
struct TYPE_9__ {size_t flags; struct spi_master* master; int /*<<< orphan*/ * txrx_word; int /*<<< orphan*/  chipselect; } ;
struct TYPE_8__ {int max_speed_hz; size_t mode; struct spi_lm70llp* controller_data; scalar_t__ chip_select; int /*<<< orphan*/  modalias; } ;
struct spi_lm70llp {struct pardevice* pd; struct parport* port; TYPE_4__ bitbang; TYPE_2__* spidev_lm70; TYPE_3__ info; } ;
struct parport {TYPE_1__* physport; } ;
struct pardevice {int /*<<< orphan*/  dev; } ;
struct pardev_cb {int /*<<< orphan*/  flags; struct spi_lm70llp* private; } ;
typedef  int /*<<< orphan*/  lm70llp_cb ;
struct TYPE_7__ {int bits_per_word; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRVNAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PARPORT_FLAG_EXCL ; 
 size_t SPI_3WIRE ; 
 size_t SPI_MODE_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  lm70_INIT ; 
 int /*<<< orphan*/  lm70_chipselect ; 
 int /*<<< orphan*/  lm70_txrx ; 
 struct spi_lm70llp* lm70llp ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct pardev_cb*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct pardevice*) ; 
 struct pardevice* FUNC6 (struct parport*,int /*<<< orphan*/ ,struct pardev_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pardevice*) ; 
 int /*<<< orphan*/  FUNC8 (struct pardevice*) ; 
 int /*<<< orphan*/  FUNC9 (struct parport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 struct spi_master* FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 struct spi_lm70llp* FUNC15 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC16 (struct spi_master*) ; 
 TYPE_2__* FUNC17 (struct spi_master*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC19(struct parport *p)
{
	struct pardevice	*pd;
	struct spi_lm70llp	*pp;
	struct spi_master	*master;
	int			status;
	struct pardev_cb	lm70llp_cb;

	if (lm70llp) {
		FUNC11("spi_lm70llp instance already loaded. Aborting.\n");
		return;
	}

	/* TODO:  this just _assumes_ a lm70 is there ... no probe;
	 * the lm70 driver could verify it, reading the manf ID.
	 */

	master = FUNC12(p->physport->dev, sizeof *pp);
	if (!master) {
		status = -ENOMEM;
		goto out_fail;
	}
	pp = FUNC15(master);

	/*
	 * SPI and bitbang hookup.
	 */
	pp->bitbang.master = master;
	pp->bitbang.chipselect = lm70_chipselect;
	pp->bitbang.txrx_word[SPI_MODE_0] = lm70_txrx;
	pp->bitbang.flags = SPI_3WIRE;

	/*
	 * Parport hookup
	 */
	pp->port = p;
	FUNC4(&lm70llp_cb, 0, sizeof(lm70llp_cb));
	lm70llp_cb.private = pp;
	lm70llp_cb.flags = PARPORT_FLAG_EXCL;
	pd = FUNC6(p, DRVNAME, &lm70llp_cb, 0);

	if (!pd) {
		status = -ENOMEM;
		goto out_free_master;
	}
	pp->pd = pd;

	status = FUNC5(pd);
	if (status < 0)
		goto out_parport_unreg;

	/*
	 * Start SPI ...
	 */
	status = FUNC13(&pp->bitbang);
	if (status < 0) {
		FUNC2(&pd->dev, "spi_bitbang_start failed with status %d\n",
			 status);
		goto out_off_and_release;
	}

	/*
	 * The modalias name MUST match the device_driver name
	 * for the bus glue code to match and subsequently bind them.
	 * We are binding to the generic drivers/hwmon/lm70.c device
	 * driver.
	 */
	FUNC18(pp->info.modalias, "lm70");
	pp->info.max_speed_hz = 6 * 1000 * 1000;
	pp->info.chip_select = 0;
	pp->info.mode = SPI_3WIRE | SPI_MODE_0;

	/* power up the chip, and let the LM70 control SI/SO */
	FUNC9(pp->port, lm70_INIT);

	/* Enable access to our primary data structure via
	 * the board info's (void *)controller_data.
	 */
	pp->info.controller_data = pp;
	pp->spidev_lm70 = FUNC17(pp->bitbang.master, &pp->info);
	if (pp->spidev_lm70)
		FUNC0(&pp->spidev_lm70->dev, "spidev_lm70 at %s\n",
			FUNC1(&pp->spidev_lm70->dev));
	else {
		FUNC2(&pd->dev, "spi_new_device failed\n");
		status = -ENODEV;
		goto out_bitbang_stop;
	}
	pp->spidev_lm70->bits_per_word = 8;

	lm70llp = pp;
	return;

out_bitbang_stop:
	FUNC14(&pp->bitbang);
out_off_and_release:
	/* power down */
	FUNC9(pp->port, 0);
	FUNC3(10);
	FUNC7(pp->pd);
out_parport_unreg:
	FUNC8(pd);
out_free_master:
	FUNC16(master);
out_fail:
	FUNC10("spi_lm70llp probe fail, status %d\n", status);
}