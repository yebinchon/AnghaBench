#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_6__ {int rx; } ;
struct uart_port {TYPE_3__ icount; scalar_t__ membase; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct men_z135_port {TYPE_2__* mdev; int /*<<< orphan*/  rxbuf; struct uart_port port; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct tty_port port; } ;

/* Variables and functions */
 int MEN_Z135_FIFO_WATERMARK ; 
 scalar_t__ MEN_Z135_RX_CTRL ; 
 scalar_t__ MEN_Z135_RX_RAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC1 (struct men_z135_port*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC5 (struct tty_port*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*) ; 
 int FUNC7 (struct tty_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct men_z135_port *uart)
{
	struct uart_port *port = &uart->port;
	struct tty_port *tport = &port->state->port;
	int copied;
	u16 size;
	int room;

	size = FUNC1(uart);

	if (size == 0)
		return;

	/* Avoid accidently accessing TX FIFO instead of RX FIFO. Last
	 * longword in RX FIFO cannot be read.(0x004-0x3FF)
	 */
	if (size > MEN_Z135_FIFO_WATERMARK)
		size = MEN_Z135_FIFO_WATERMARK;

	room = FUNC5(tport, size);
	if (room != size)
		FUNC0(&uart->mdev->dev,
			"Not enough room in flip buffer, truncating to %d\n",
			room);

	if (room == 0)
		return;

	FUNC4(uart->rxbuf, port->membase + MEN_Z135_RX_RAM, room);
	/* Be sure to first copy all data and then acknowledge it */
	FUNC3();
	FUNC2(room, port->membase +  MEN_Z135_RX_CTRL);

	copied = FUNC7(tport, uart->rxbuf, room);
	if (copied != room)
		FUNC0(&uart->mdev->dev,
			"Only copied %d instead of %d bytes\n",
			copied, room);

	port->icount.rx += copied;

	FUNC6(tport);

}