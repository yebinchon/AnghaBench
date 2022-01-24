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
struct spi_transfer {int len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;
struct spi_device {int dummy; } ;
struct s3c24xx_spi {int len; int count; int /*<<< orphan*/  done; scalar_t__ regs; scalar_t__ fiq_inuse; int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 scalar_t__ S3C2410_SPTDAT ; 
 int /*<<< orphan*/  FUNC0 (struct s3c24xx_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct s3c24xx_spi*) ; 
 scalar_t__ FUNC3 (struct s3c24xx_spi*) ; 
 struct s3c24xx_spi* FUNC4 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi, struct spi_transfer *t)
{
	struct s3c24xx_spi *hw = FUNC4(spi);

	hw->tx = t->tx_buf;
	hw->rx = t->rx_buf;
	hw->len = t->len;
	hw->count = 0;

	FUNC1(&hw->done);

	hw->fiq_inuse = 0;
	if (FUNC3(hw) && t->len >= 3)
		FUNC2(hw);

	/* send the first byte */
	FUNC6(FUNC0(hw, 0), hw->regs + S3C2410_SPTDAT);

	FUNC5(&hw->done);
	return hw->count;
}