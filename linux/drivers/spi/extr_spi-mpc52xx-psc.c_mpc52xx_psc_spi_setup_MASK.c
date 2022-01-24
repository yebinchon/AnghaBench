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
struct spi_device {int bits_per_word; int /*<<< orphan*/  max_speed_hz; struct mpc52xx_psc_spi_cs* controller_state; int /*<<< orphan*/  master; } ;
struct mpc52xx_psc_spi_cs {int bits_per_word; int /*<<< orphan*/  speed_hz; } ;
struct mpc52xx_psc_spi {int /*<<< orphan*/  lock; int /*<<< orphan*/  busy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mpc52xx_psc_spi_cs* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_device*) ; 
 struct mpc52xx_psc_spi* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct mpc52xx_psc_spi *mps = FUNC2(spi->master);
	struct mpc52xx_psc_spi_cs *cs = spi->controller_state;
	unsigned long flags;

	if (spi->bits_per_word%8)
		return -EINVAL;

	if (!cs) {
		cs = FUNC0(sizeof *cs, GFP_KERNEL);
		if (!cs)
			return -ENOMEM;
		spi->controller_state = cs;
	}

	cs->bits_per_word = spi->bits_per_word;
	cs->speed_hz = spi->max_speed_hz;

	FUNC3(&mps->lock, flags);
	if (!mps->busy)
		FUNC1(spi);
	FUNC4(&mps->lock, flags);

	return 0;
}