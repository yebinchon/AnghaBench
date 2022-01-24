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
struct usb_serial_port {int /*<<< orphan*/  dev; TYPE_1__* serial; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KL5KUSB105A_SIO_CONFIGURE ; 
 int /*<<< orphan*/  KL5KUSB105A_SIO_CONFIGURE_READ_OFF ; 
 int /*<<< orphan*/  KLSI_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct usb_serial_port *port)
{
	int rc;

	/* send READ_OFF */
	rc = FUNC1(port->serial->dev,
			     FUNC3(port->serial->dev, 0),
			     KL5KUSB105A_SIO_CONFIGURE,
			     USB_TYPE_VENDOR | USB_DIR_OUT,
			     KL5KUSB105A_SIO_CONFIGURE_READ_OFF,
			     0, /* index */
			     NULL, 0,
			     KLSI_TIMEOUT);
	if (rc < 0)
		FUNC0(&port->dev, "failed to disable read: %d\n", rc);

	/* shutdown our bulk reads and writes */
	FUNC2(port);
}