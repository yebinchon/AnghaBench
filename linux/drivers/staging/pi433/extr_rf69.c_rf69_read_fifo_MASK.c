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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  transfer ;
struct spi_transfer {unsigned int len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int FIFO_SIZE ; 
 int /*<<< orphan*/  REG_FIFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct spi_device*,struct spi_transfer*,int) ; 

int FUNC4(struct spi_device *spi, u8 *buffer, unsigned int size)
{
#ifdef DEBUG_FIFO_ACCESS
	int i;
#endif
	struct spi_transfer transfer;
	u8 local_buffer[FIFO_SIZE + 1];
	int retval;

	if (size > FIFO_SIZE) {
		FUNC0(&spi->dev,
			"read fifo: passed in buffer bigger then internal buffer\n");
		return -EMSGSIZE;
	}

	/* prepare a bidirectional transfer */
	local_buffer[0] = REG_FIFO;
	FUNC2(&transfer, 0, sizeof(transfer));
	transfer.tx_buf = local_buffer;
	transfer.rx_buf = local_buffer;
	transfer.len	= size + 1;

	retval = FUNC3(spi, &transfer, 1);

#ifdef DEBUG_FIFO_ACCESS
	for (i = 0; i < size; i++)
		dev_dbg(&spi->dev, "%d - 0x%x\n", i, local_buffer[i + 1]);
#endif

	FUNC1(buffer, &local_buffer[1], size);

	return retval;
}