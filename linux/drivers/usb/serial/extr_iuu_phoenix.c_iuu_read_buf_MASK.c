#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_serial_port {TYPE_2__* read_urb; int /*<<< orphan*/  bulk_in_endpointAddress; TYPE_1__* serial; } ;
struct TYPE_5__ {int /*<<< orphan*/  transfer_buffer; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  read_buf_callback ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_serial_port *port, int len)
{
	int result;

	FUNC0(port->read_urb, port->serial->dev,
			  FUNC1(port->serial->dev,
					  port->bulk_in_endpointAddress),
			  port->read_urb->transfer_buffer, len,
			  read_buf_callback, port);
	result = FUNC2(port->read_urb, GFP_ATOMIC);
	return result;
}