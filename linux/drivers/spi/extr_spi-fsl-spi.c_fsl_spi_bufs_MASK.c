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
typedef  int u8 ;
struct spi_transfer {unsigned int len; int bits_per_word; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;
struct spi_device {int bits_per_word; int /*<<< orphan*/  master; } ;
struct mpc8xxx_spi {int flags; int count; int /*<<< orphan*/  done; int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; struct fsl_spi_reg* reg_base; } ;
struct fsl_spi_reg {int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 int EINVAL ; 
 int SPI_CPM_MODE ; 
 int FUNC0 (struct mpc8xxx_spi*,struct spi_transfer*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mpc8xxx_spi*) ; 
 int FUNC2 (struct mpc8xxx_spi*,struct spi_transfer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mpc8xxx_spi* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi, struct spi_transfer *t,
			    bool is_dma_mapped)
{
	struct mpc8xxx_spi *mpc8xxx_spi = FUNC5(spi->master);
	struct fsl_spi_reg *reg_base;
	unsigned int len = t->len;
	u8 bits_per_word;
	int ret;

	reg_base = mpc8xxx_spi->reg_base;
	bits_per_word = spi->bits_per_word;
	if (t->bits_per_word)
		bits_per_word = t->bits_per_word;

	if (bits_per_word > 8) {
		/* invalid length? */
		if (len & 1)
			return -EINVAL;
		len /= 2;
	}
	if (bits_per_word > 16) {
		/* invalid length? */
		if (len & 1)
			return -EINVAL;
		len /= 2;
	}

	mpc8xxx_spi->tx = t->tx_buf;
	mpc8xxx_spi->rx = t->rx_buf;

	FUNC4(&mpc8xxx_spi->done);

	if (mpc8xxx_spi->flags & SPI_CPM_MODE)
		ret = FUNC0(mpc8xxx_spi, t, is_dma_mapped);
	else
		ret = FUNC2(mpc8xxx_spi, t, len);
	if (ret)
		return ret;

	FUNC6(&mpc8xxx_spi->done);

	/* disable rx ints */
	FUNC3(&reg_base->mask, 0);

	if (mpc8xxx_spi->flags & SPI_CPM_MODE)
		FUNC1(mpc8xxx_spi);

	return mpc8xxx_spi->count;
}