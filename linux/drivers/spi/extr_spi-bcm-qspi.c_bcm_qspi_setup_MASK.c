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
struct spi_device {int bits_per_word; int /*<<< orphan*/  mode; int /*<<< orphan*/  max_speed_hz; } ;
struct bcm_qspi_parms {int bits_per_word; int /*<<< orphan*/  mode; int /*<<< orphan*/  speed_hz; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct bcm_qspi_parms* FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct bcm_qspi_parms* FUNC1 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*,struct bcm_qspi_parms*) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	struct bcm_qspi_parms *xp;

	if (spi->bits_per_word > 16)
		return -EINVAL;

	xp = FUNC1(spi);
	if (!xp) {
		xp = FUNC0(sizeof(*xp), GFP_KERNEL);
		if (!xp)
			return -ENOMEM;
		FUNC2(spi, xp);
	}
	xp->speed_hz = spi->max_speed_hz;
	xp->mode = spi->mode;

	if (spi->bits_per_word)
		xp->bits_per_word = spi->bits_per_word;
	else
		xp->bits_per_word = 8;

	return 0;
}