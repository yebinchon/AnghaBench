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
typedef  int u16 ;
struct spi_transfer {int* tx_buf; int bits_per_word; int len; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct ade7854_state {int* tx; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int ADE7854_WRITE_REG ; 
 int EINVAL ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 struct ade7854_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct spi_transfer*,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
				 u16 reg_address,
				 u32 val,
				 int bits)
{
	int ret;
	struct iio_dev *indio_dev = FUNC0(dev);
	struct ade7854_state *st = FUNC1(indio_dev);
	struct spi_transfer xfer = {
		.tx_buf = st->tx,
		.bits_per_word = 8,
		.len = 4,
	};

	FUNC2(&st->buf_lock);
	st->tx[0] = ADE7854_WRITE_REG;
	st->tx[1] = (reg_address >> 8) & 0xFF;
	st->tx[2] = reg_address & 0xFF;
	switch (bits) {
	case 8:
		st->tx[3] = val & 0xFF;
		break;
	case 16:
		xfer.len = 5;
		st->tx[3] = (val >> 8) & 0xFF;
		st->tx[4] = val & 0xFF;
		break;
	case 24:
		xfer.len = 6;
		st->tx[3] = (val >> 16) & 0xFF;
		st->tx[4] = (val >> 8) & 0xFF;
		st->tx[5] = val & 0xFF;
		break;
	case 32:
		xfer.len = 7;
		st->tx[3] = (val >> 24) & 0xFF;
		st->tx[4] = (val >> 16) & 0xFF;
		st->tx[5] = (val >> 8) & 0xFF;
		st->tx[6] = val & 0xFF;
		break;
	default:
		ret = -EINVAL;
		goto unlock;
	}

	ret = FUNC4(st->spi, &xfer, 1);
unlock:
	FUNC3(&st->buf_lock);

	return ret;
}