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
typedef  int u16 ;
struct spi_transfer {int len; int* tx_buf; } ;
struct spi_message {int dummy; } ;
struct ams369fg06 {int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_message*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static int FUNC3(struct ams369fg06 *lcd, int addr, int data)
{
	u16 buf[1];
	struct spi_message msg;

	struct spi_transfer xfer = {
		.len		= 2,
		.tx_buf		= buf,
	};

	buf[0] = (addr << 8) | data;

	FUNC1(&msg);
	FUNC0(&xfer, &msg);

	return FUNC2(lcd->spi, &msg);
}