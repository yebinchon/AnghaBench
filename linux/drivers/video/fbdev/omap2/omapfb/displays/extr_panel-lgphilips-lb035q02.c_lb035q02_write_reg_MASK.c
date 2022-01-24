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
typedef  int u16 ;
struct spi_transfer {int len; int cs_change; int* tx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_message*) ; 
 int FUNC2 (struct spi_device*,struct spi_message*) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi, u8 reg, u16 val)
{
	struct spi_message msg;
	struct spi_transfer index_xfer = {
		.len		= 3,
		.cs_change	= 1,
	};
	struct spi_transfer value_xfer = {
		.len		= 3,
	};
	u8	buffer[16];

	FUNC1(&msg);

	/* register index */
	buffer[0] = 0x70;
	buffer[1] = 0x00;
	buffer[2] = reg & 0x7f;
	index_xfer.tx_buf = buffer;
	FUNC0(&index_xfer, &msg);

	/* register value */
	buffer[4] = 0x72;
	buffer[5] = val >> 8;
	buffer[6] = val;
	value_xfer.tx_buf = buffer + 4;
	FUNC0(&value_xfer, &msg);

	return FUNC2(spi, &msg);
}