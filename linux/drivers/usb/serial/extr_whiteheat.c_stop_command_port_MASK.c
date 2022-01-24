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
struct whiteheat_command_private {int /*<<< orphan*/  mutex; int /*<<< orphan*/  port_running; } ;
struct usb_serial_port {int /*<<< orphan*/  read_urb; } ;
struct usb_serial {struct usb_serial_port** port; } ;

/* Variables and functions */
 size_t COMMAND_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct whiteheat_command_private* FUNC2 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct usb_serial *serial)
{
	struct usb_serial_port *command_port;
	struct whiteheat_command_private *command_info;

	command_port = serial->port[COMMAND_PORT];
	command_info = FUNC2(command_port);
	FUNC0(&command_info->mutex);
	command_info->port_running--;
	if (!command_info->port_running)
		FUNC3(command_port->read_urb);
	FUNC1(&command_info->mutex);
}