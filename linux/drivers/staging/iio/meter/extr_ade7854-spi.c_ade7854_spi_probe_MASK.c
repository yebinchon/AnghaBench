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
struct spi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct iio_dev {int dummy; } ;
struct ade7854_state {struct spi_device* spi; int /*<<< orphan*/  irq; int /*<<< orphan*/  write_reg; int /*<<< orphan*/  read_reg; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct iio_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ade7854_spi_read_reg ; 
 int /*<<< orphan*/  ade7854_spi_write_reg ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct ade7854_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	struct ade7854_state *st;
	struct iio_dev *indio_dev;

	indio_dev = FUNC1(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;
	st = FUNC2(indio_dev);
	FUNC3(spi, indio_dev);
	st->read_reg = ade7854_spi_read_reg;
	st->write_reg = ade7854_spi_write_reg;
	st->irq = spi->irq;
	st->spi = spi;

	return FUNC0(indio_dev, &spi->dev);
}