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
struct usbhs_priv {int dummy; } ;
struct usbhs_fifo {int /*<<< orphan*/ * rx_chan; int /*<<< orphan*/ * tx_chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct usbhs_priv *priv, struct usbhs_fifo *fifo)
{
	if (fifo->tx_chan)
		FUNC0(fifo->tx_chan);
	if (fifo->rx_chan)
		FUNC0(fifo->rx_chan);

	fifo->tx_chan = NULL;
	fifo->rx_chan = NULL;
}