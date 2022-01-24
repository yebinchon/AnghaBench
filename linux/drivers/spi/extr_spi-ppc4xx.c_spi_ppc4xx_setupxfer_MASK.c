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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct spi_transfer {scalar_t__ bits_per_word; int speed_hz; } ;
struct spi_ppc4xx_cs {scalar_t__ mode; } ;
struct spi_device {scalar_t__ bits_per_word; int max_speed_hz; int /*<<< orphan*/  dev; struct spi_ppc4xx_cs* controller_state; int /*<<< orphan*/  master; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  (* chipselect ) (struct spi_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  busy; } ;
struct ppc4xx_spi {int opb_freq; TYPE_2__ bitbang; TYPE_1__* regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  cdm; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITBANG_CS_INACTIVE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct ppc4xx_spi* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi, struct spi_transfer *t)
{
	struct ppc4xx_spi *hw = FUNC7(spi->master);
	struct spi_ppc4xx_cs *cs = spi->controller_state;
	int scr;
	u8 cdm = 0;
	u32 speed;
	u8 bits_per_word;

	/* Start with the generic configuration for this device. */
	bits_per_word = spi->bits_per_word;
	speed = spi->max_speed_hz;

	/*
	 * Modify the configuration if the transfer overrides it.  Do not allow
	 * the transfer to overwrite the generic configuration with zeros.
	 */
	if (t) {
		if (t->bits_per_word)
			bits_per_word = t->bits_per_word;

		if (t->speed_hz)
			speed = FUNC3(t->speed_hz, spi->max_speed_hz);
	}

	if (!speed || (speed > spi->max_speed_hz)) {
		FUNC1(&spi->dev, "invalid speed_hz (%d)\n", speed);
		return -EINVAL;
	}

	/* Write new configuration */
	FUNC6(&hw->regs->mode, cs->mode);

	/* Set the clock */
	/* opb_freq was already divided by 4 */
	scr = (hw->opb_freq / speed) - 1;
	if (scr > 0)
		cdm = FUNC3(scr, 0xff);

	FUNC0(&spi->dev, "setting pre-scaler to %d (hz %d)\n", cdm, speed);

	if (FUNC2(&hw->regs->cdm) != cdm)
		FUNC6(&hw->regs->cdm, cdm);

	FUNC4(&hw->bitbang.lock);
	if (!hw->bitbang.busy) {
		hw->bitbang.chipselect(spi, BITBANG_CS_INACTIVE);
		/* Need to ndelay here? */
	}
	FUNC5(&hw->bitbang.lock);

	return 0;
}