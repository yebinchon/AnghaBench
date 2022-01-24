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
struct uart_port {int /*<<< orphan*/  dev; } ;
struct spi_transfer {int len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct max310x_one {int /*<<< orphan*/  rd_header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct spi_transfer*,int /*<<< orphan*/ ) ; 
 struct max310x_one* FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, u8 *rxbuf, unsigned int len)
{
	struct max310x_one *one = FUNC2(port);
	struct spi_transfer xfer[] = {
		{
			.tx_buf = &one->rd_header,
			.len = sizeof(one->rd_header),
		}, {
			.rx_buf = rxbuf,
			.len = len,
		}
	};
	FUNC1(FUNC3(port->dev), xfer, FUNC0(xfer));
}