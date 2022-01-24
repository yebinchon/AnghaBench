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
typedef  int u32 ;
typedef  int u16 ;
struct spi_transfer {int* tx_buf; int bits_per_word; int len; int* rx_buf; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct ade7854_state {int* tx; int* rx; int /*<<< orphan*/  buf_lock; TYPE_1__* spi; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ADE7854_READ_REG ; 
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct iio_dev* FUNC4 (struct device*) ; 
 struct ade7854_state* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,struct spi_transfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct device *dev,
				u16 reg_address,
				u32 *val,
				int bits)
{
	struct iio_dev *indio_dev = FUNC4(dev);
	struct ade7854_state *st = FUNC5(indio_dev);
	int ret;
	struct spi_transfer xfers[] = {
		{
			.tx_buf = st->tx,
			.bits_per_word = 8,
			.len = 3,
		}, {
			.rx_buf = st->rx,
			.bits_per_word = 8,
			.len = bits,
		}
	};

	FUNC6(&st->buf_lock);

	st->tx[0] = ADE7854_READ_REG;
	st->tx[1] = (reg_address >> 8) & 0xFF;
	st->tx[2] = reg_address & 0xFF;

	ret = FUNC8(st->spi, xfers, FUNC0(xfers));
	if (ret < 0) {
		FUNC3(&st->spi->dev, "problem when reading register 0x%02X",
			reg_address);
		goto unlock;
	}

	switch (bits) {
	case 8:
		*val = st->rx[0];
		break;
	case 16:
		*val = FUNC1((const __be16 *)st->rx);
		break;
	case 24:
		*val = (st->rx[0] << 16) | (st->rx[1] << 8) | st->rx[2];
		break;
	case 32:
		*val = FUNC2((const __be32 *)st->rx);
		break;
	}

unlock:
	FUNC7(&st->buf_lock);
	return ret;
}