#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_port {int dummy; } ;
struct TYPE_3__ {int rx; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; TYPE_1__ icount; } ;
struct s3c24xx_uart_port {TYPE_2__ port; struct s3c24xx_uart_dma* dma; } ;
struct s3c24xx_uart_dma {scalar_t__ rx_buf; int /*<<< orphan*/  rx_size; int /*<<< orphan*/  rx_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tty_port*,unsigned char*,int) ; 

__attribute__((used)) static void FUNC4(struct s3c24xx_uart_port *ourport,
		struct tty_port *tty, int count)
{
	struct s3c24xx_uart_dma *dma = ourport->dma;
	int copied;

	if (!count)
		return;

	FUNC2(ourport->port.dev, dma->rx_addr,
				dma->rx_size, DMA_FROM_DEVICE);

	ourport->port.icount.rx += count;
	if (!tty) {
		FUNC1(ourport->port.dev, "No tty port\n");
		return;
	}
	copied = FUNC3(tty,
			((unsigned char *)(ourport->dma->rx_buf)), count);
	if (copied != count) {
		FUNC0(1);
		FUNC1(ourport->port.dev, "RxData copy to tty layer failed\n");
	}
}