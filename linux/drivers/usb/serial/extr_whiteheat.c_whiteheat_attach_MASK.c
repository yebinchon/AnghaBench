#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct whiteheat_hw_info {int /*<<< orphan*/  sw_minor_rev; int /*<<< orphan*/  sw_major_rev; } ;
struct whiteheat_command_private {int /*<<< orphan*/  wait_command; scalar_t__ port_running; int /*<<< orphan*/  mutex; } ;
struct usb_serial_port {TYPE_2__* read_urb; TYPE_1__* write_urb; int /*<<< orphan*/  bulk_in_endpointAddress; int /*<<< orphan*/  bulk_out_endpointAddress; } ;
struct usb_serial {TYPE_3__* type; TYPE_4__* dev; struct usb_serial_port** port; } ;
typedef  scalar_t__ __u8 ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  description; } ;
struct TYPE_9__ {int /*<<< orphan*/  complete; } ;
struct TYPE_8__ {int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 size_t COMMAND_PORT ; 
 int /*<<< orphan*/  COMMAND_TIMEOUT_MS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ WHITEHEAT_GET_HW_INFO ; 
 int /*<<< orphan*/  command_port_read_callback ; 
 int /*<<< orphan*/  command_port_write_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_4__*,int,scalar_t__*,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 int FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_serial_port*,struct whiteheat_command_private*) ; 
 int FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct usb_serial *serial)
{
	struct usb_serial_port *command_port;
	struct whiteheat_command_private *command_info;
	struct whiteheat_hw_info *hw_info;
	int pipe;
	int ret;
	int alen;
	__u8 *command;
	__u8 *result;

	command_port = serial->port[COMMAND_PORT];

	pipe = FUNC10(serial->dev,
			command_port->bulk_out_endpointAddress);
	command = FUNC4(2, GFP_KERNEL);
	if (!command)
		goto no_command_buffer;
	command[0] = WHITEHEAT_GET_HW_INFO;
	command[1] = 0;

	result = FUNC4(sizeof(*hw_info) + 1, GFP_KERNEL);
	if (!result)
		goto no_result_buffer;
	/*
	 * When the module is reloaded the firmware is still there and
	 * the endpoints are still in the usb core unchanged. This is the
	 * unlinking bug in disguise. Same for the call below.
	 */
	FUNC7(serial->dev, pipe);
	ret = FUNC6(serial->dev, pipe, command, 2,
						&alen, COMMAND_TIMEOUT_MS);
	if (ret) {
		FUNC0(&serial->dev->dev, "%s: Couldn't send command [%d]\n",
			serial->type->description, ret);
		goto no_firmware;
	} else if (alen != 2) {
		FUNC0(&serial->dev->dev, "%s: Send command incomplete [%d]\n",
			serial->type->description, alen);
		goto no_firmware;
	}

	pipe = FUNC8(serial->dev,
				command_port->bulk_in_endpointAddress);
	/* See the comment on the usb_clear_halt() above */
	FUNC7(serial->dev, pipe);
	ret = FUNC6(serial->dev, pipe, result,
			sizeof(*hw_info) + 1, &alen, COMMAND_TIMEOUT_MS);
	if (ret) {
		FUNC0(&serial->dev->dev, "%s: Couldn't get results [%d]\n",
			serial->type->description, ret);
		goto no_firmware;
	} else if (alen != sizeof(*hw_info) + 1) {
		FUNC0(&serial->dev->dev, "%s: Get results incomplete [%d]\n",
			serial->type->description, alen);
		goto no_firmware;
	} else if (result[0] != command[0]) {
		FUNC0(&serial->dev->dev, "%s: Command failed [%d]\n",
			serial->type->description, result[0]);
		goto no_firmware;
	}

	hw_info = (struct whiteheat_hw_info *)&result[1];

	FUNC1(&serial->dev->dev, "%s: Firmware v%d.%02d\n",
		 serial->type->description,
		 hw_info->sw_major_rev, hw_info->sw_minor_rev);

	command_info = FUNC4(sizeof(struct whiteheat_command_private),
								GFP_KERNEL);
	if (!command_info)
		goto no_command_private;

	FUNC5(&command_info->mutex);
	command_info->port_running = 0;
	FUNC2(&command_info->wait_command);
	FUNC9(command_port, command_info);
	command_port->write_urb->complete = command_port_write_callback;
	command_port->read_urb->complete = command_port_read_callback;
	FUNC3(result);
	FUNC3(command);

	return 0;

no_firmware:
	/* Firmware likely not running */
	FUNC0(&serial->dev->dev,
		"%s: Unable to retrieve firmware version, try replugging\n",
		serial->type->description);
	FUNC0(&serial->dev->dev,
		"%s: If the firmware is not running (status led not blinking)\n",
		serial->type->description);
	FUNC0(&serial->dev->dev,
		"%s: please contact support@connecttech.com\n",
		serial->type->description);
	FUNC3(result);
	FUNC3(command);
	return -ENODEV;

no_command_private:
	FUNC3(result);
no_result_buffer:
	FUNC3(command);
no_command_buffer:
	return -ENOMEM;
}