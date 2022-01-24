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
typedef  int /*<<< orphan*/  xfer ;
typedef  int u8 ;
typedef  int u16 ;
struct spi_transfer {int* tx_buf; int bits_per_word; int len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_message*) ; 
 int FUNC4 (struct spi_device*,struct spi_message*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi, u8 addr, u8 data)
{
	struct spi_message	m;
	struct spi_transfer	xfer;
	u16			w;
	int			r;

	FUNC3(&m);

	FUNC1(&xfer, 0, sizeof(xfer));

	w = ((u16)addr << 10) | (1 << 8) | data;
	xfer.tx_buf = &w;
	xfer.bits_per_word = 16;
	xfer.len = 2;
	FUNC2(&xfer, &m);

	r = FUNC4(spi, &m);
	if (r < 0)
		FUNC0(&spi->dev, "failed to write to LCD reg (%d)\n", r);
	return r;
}