#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_serial_port {TYPE_1__* serial; } ;
struct ch341_private {int lcr; int /*<<< orphan*/  baud_rate; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CH341_LCR_CS8 ; 
 int CH341_LCR_ENABLE_RX ; 
 int CH341_LCR_ENABLE_TX ; 
 int /*<<< orphan*/  DEFAULT_BAUD_RATE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct ch341_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct ch341_private*) ; 
 struct ch341_private* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_serial_port*,struct ch341_private*) ; 

__attribute__((used)) static int FUNC5(struct usb_serial_port *port)
{
	struct ch341_private *priv;
	int r;

	priv = FUNC2(sizeof(struct ch341_private), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC3(&priv->lock);
	priv->baud_rate = DEFAULT_BAUD_RATE;
	/*
	 * Some CH340 devices appear unable to change the initial LCR
	 * settings, so set a sane 8N1 default.
	 */
	priv->lcr = CH341_LCR_ENABLE_RX | CH341_LCR_ENABLE_TX | CH341_LCR_CS8;

	r = FUNC0(port->serial->dev, priv);
	if (r < 0)
		goto error;

	FUNC4(port, priv);
	return 0;

error:	FUNC1(priv);
	return r;
}