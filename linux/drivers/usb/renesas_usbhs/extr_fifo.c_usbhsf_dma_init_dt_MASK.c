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
struct usbhs_fifo {int /*<<< orphan*/ * rx_chan; int /*<<< orphan*/ * tx_chan; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

__attribute__((used)) static void FUNC3(struct device *dev, struct usbhs_fifo *fifo,
			       int channel)
{
	char name[16];

	/*
	 * To avoid complex handing for DnFIFOs, the driver uses each
	 * DnFIFO as TX or RX direction (not bi-direction).
	 * So, the driver uses odd channels for TX, even channels for RX.
	 */
	FUNC2(name, sizeof(name), "ch%d", channel);
	if (channel & 1) {
		fifo->tx_chan = FUNC1(dev, name);
		if (FUNC0(fifo->tx_chan))
			fifo->tx_chan = NULL;
	} else {
		fifo->rx_chan = FUNC1(dev, name);
		if (FUNC0(fifo->rx_chan))
			fifo->rx_chan = NULL;
	}
}