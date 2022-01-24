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
struct usbhs_fifo {scalar_t__ rx_chan; scalar_t__ tx_chan; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 struct device* FUNC2 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct usbhs_fifo*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_fifo*) ; 

__attribute__((used)) static void FUNC5(struct usbhs_priv *priv, struct usbhs_fifo *fifo,
			    int channel)
{
	struct device *dev = FUNC2(priv);

	if (FUNC1(dev))
		FUNC3(dev, fifo, channel);
	else
		FUNC4(fifo);

	if (fifo->tx_chan || fifo->rx_chan)
		FUNC0(dev, "enable DMAEngine (%s%s%s)\n",
			 fifo->name,
			 fifo->tx_chan ? "[TX]" : "    ",
			 fifo->rx_chan ? "[RX]" : "    ");
}