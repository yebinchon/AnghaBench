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
struct usb_serial_port {int /*<<< orphan*/  dev; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct ark3116_private {int quot; int lcr; scalar_t__ irda; scalar_t__ mcr; scalar_t__ hcr; int /*<<< orphan*/  status_lock; int /*<<< orphan*/  hw_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int UART_DLL ; 
 int UART_DLM ; 
 int UART_FCR ; 
 int UART_IER ; 
 int UART_LCR ; 
 int UART_LCR_DLAB ; 
 int UART_LCR_WLEN8 ; 
 int UART_MCR ; 
 int /*<<< orphan*/  FUNC0 (struct usb_serial*,int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC3 (struct usb_serial*) ; 
 struct ark3116_private* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_serial_port*,struct ark3116_private*) ; 

__attribute__((used)) static int FUNC8(struct usb_serial_port *port)
{
	struct usb_serial *serial = port->serial;
	struct ark3116_private *priv;

	priv = FUNC4(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC5(&priv->hw_lock);
	FUNC6(&priv->status_lock);

	priv->irda = FUNC3(serial);

	FUNC7(port, priv);

	/* setup the hardware */
	FUNC0(serial, UART_IER, 0);
	/* disable DMA */
	FUNC0(serial, UART_FCR, 0);
	/* handshake control */
	priv->hcr = 0;
	FUNC0(serial, 0x8     , 0);
	/* modem control */
	priv->mcr = 0;
	FUNC0(serial, UART_MCR, 0);

	if (!(priv->irda)) {
		FUNC0(serial, 0xb , 0);
	} else {
		FUNC0(serial, 0xb , 1);
		FUNC0(serial, 0xc , 0);
		FUNC0(serial, 0xd , 0x41);
		FUNC0(serial, 0xa , 1);
	}

	/* setup baudrate */
	FUNC0(serial, UART_LCR, UART_LCR_DLAB);

	/* setup for 9600 8N1 */
	priv->quot = FUNC1(9600);
	FUNC0(serial, UART_DLL, priv->quot & 0xff);
	FUNC0(serial, UART_DLM, (priv->quot>>8) & 0xff);

	priv->lcr = UART_LCR_WLEN8;
	FUNC0(serial, UART_LCR, UART_LCR_WLEN8);

	FUNC0(serial, 0xe, 0);

	if (priv->irda)
		FUNC0(serial, 0x9, 0);

	FUNC2(&port->dev, "using %s mode\n", priv->irda ? "IrDA" : "RS232");

	return 0;
}