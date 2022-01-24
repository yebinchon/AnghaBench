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
struct usb_serial_port {TYPE_2__* write_urb; int /*<<< orphan*/  bulk_out_endpointAddress; TYPE_1__* serial; } ;
struct TYPE_5__ {int /*<<< orphan*/  transfer_buffer; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IUU_GET_STATE_REGISTER ; 
 int /*<<< orphan*/  iuu_status_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_serial_port *port)
{
	int result;

	FUNC0(port->write_urb->transfer_buffer, IUU_GET_STATE_REGISTER, 1);
	FUNC1(port->write_urb, port->serial->dev,
			  FUNC2(port->serial->dev,
					  port->bulk_out_endpointAddress),
			  port->write_urb->transfer_buffer, 1,
			  iuu_status_callback, port);
	result = FUNC3(port->write_urb, GFP_ATOMIC);
	return result;

}