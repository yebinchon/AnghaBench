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
struct pch_uart_buffer {int size; int /*<<< orphan*/  buf; } ;
struct eg20t_port {struct pch_uart_buffer rxbuf; int /*<<< orphan*/  start_rx; } ;

/* Variables and functions */
 int PCH_UART_HAL_RX_ERR_INT ; 
 int PCH_UART_HAL_RX_INT ; 
 int PCH_UART_HANDLED_RX_INT ; 
 int /*<<< orphan*/  FUNC0 (struct eg20t_port*,int) ; 
 int FUNC1 (struct eg20t_port*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct eg20t_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct eg20t_port *priv)
{
	struct pch_uart_buffer *buf;
	int rx_size;
	int ret;
	if (!priv->start_rx) {
		FUNC0(priv, PCH_UART_HAL_RX_INT |
						     PCH_UART_HAL_RX_ERR_INT);
		return 0;
	}
	buf = &priv->rxbuf;
	do {
		rx_size = FUNC1(priv, buf->buf, buf->size);
		ret = FUNC2(priv, buf->buf, rx_size);
		if (ret)
			return 0;
	} while (rx_size == buf->size);

	return PCH_UART_HANDLED_RX_INT;
}