#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct gbphy_device_id {int dummy; } ;
struct gbphy_device {int /*<<< orphan*/  dev; TYPE_1__* cport_desc; int /*<<< orphan*/  bundle; } ;
struct gb_uart_send_data_request {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_6__ {int data_bits; int /*<<< orphan*/  parity; int /*<<< orphan*/  format; int /*<<< orphan*/  rate; } ;
struct gb_tty {size_t buffer_payload_max; int minor; struct gb_tty* buffer; int /*<<< orphan*/  write_fifo; TYPE_3__ port; TYPE_2__ line_coding; int /*<<< orphan*/  ctrlout; struct gbphy_device* gbphy_dev; struct gb_connection* connection; int /*<<< orphan*/  mutex; int /*<<< orphan*/  wioctl; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  credits_complete; int /*<<< orphan*/  credits; int /*<<< orphan*/  tx_work; } ;
struct gb_connection {int dummy; } ;
typedef  struct gb_connection device ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GB_SERIAL_1_STOP_BITS ; 
 int /*<<< orphan*/  GB_SERIAL_NO_PARITY ; 
 int /*<<< orphan*/  GB_UART_FIRMWARE_CREDITS ; 
 int /*<<< orphan*/  GB_UART_WRITE_FIFO_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct gb_connection*) ; 
 int FUNC2 (struct gb_connection*) ; 
 int FUNC3 (struct gb_tty*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct gb_connection* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_connection*) ; 
 int FUNC9 (struct gb_connection*) ; 
 int FUNC10 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC11 (struct gb_connection*,struct gb_tty*) ; 
 int /*<<< orphan*/  FUNC12 (struct gbphy_device*,struct gb_tty*) ; 
 size_t FUNC13 (struct gb_connection*) ; 
 int /*<<< orphan*/  gb_port_ops ; 
 int /*<<< orphan*/  gb_tty_driver ; 
 int /*<<< orphan*/  gb_uart_request_handler ; 
 int /*<<< orphan*/  gb_uart_tx_write_work ; 
 int /*<<< orphan*/  FUNC14 (struct gbphy_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct gb_tty*) ; 
 void* FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct gb_tty*) ; 
 int /*<<< orphan*/  FUNC24 (struct gb_tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct gb_tty*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*) ; 
 struct gb_connection* FUNC28 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC29(struct gbphy_device *gbphy_dev,
			 const struct gbphy_device_id *id)
{
	struct gb_connection *connection;
	size_t max_payload;
	struct gb_tty *gb_tty;
	struct device *tty_dev;
	int retval;
	int minor;

	gb_tty = FUNC20(sizeof(*gb_tty), GFP_KERNEL);
	if (!gb_tty)
		return -ENOMEM;

	connection = FUNC6(gbphy_dev->bundle,
					  FUNC21(gbphy_dev->cport_desc->id),
					  gb_uart_request_handler);
	if (FUNC1(connection)) {
		retval = FUNC2(connection);
		goto exit_tty_free;
	}

	max_payload = FUNC13(connection);
	if (max_payload < sizeof(struct gb_uart_send_data_request)) {
		retval = -EINVAL;
		goto exit_connection_destroy;
	}

	gb_tty->buffer_payload_max = max_payload -
			sizeof(struct gb_uart_send_data_request);

	gb_tty->buffer = FUNC20(gb_tty->buffer_payload_max, GFP_KERNEL);
	if (!gb_tty->buffer) {
		retval = -ENOMEM;
		goto exit_connection_destroy;
	}

	FUNC0(&gb_tty->tx_work, gb_uart_tx_write_work);

	retval = FUNC17(&gb_tty->write_fifo, GB_UART_WRITE_FIFO_SIZE,
			     GFP_KERNEL);
	if (retval)
		goto exit_buf_free;

	gb_tty->credits = GB_UART_FIRMWARE_CREDITS;
	FUNC15(&gb_tty->credits_complete);

	minor = FUNC3(gb_tty);
	if (minor < 0) {
		if (minor == -ENOSPC) {
			FUNC5(&gbphy_dev->dev,
				"no more free minor numbers\n");
			retval = -ENODEV;
		} else {
			retval = minor;
		}
		goto exit_kfifo_free;
	}

	gb_tty->minor = minor;
	FUNC26(&gb_tty->write_lock);
	FUNC26(&gb_tty->read_lock);
	FUNC16(&gb_tty->wioctl);
	FUNC22(&gb_tty->mutex);

	FUNC27(&gb_tty->port);
	gb_tty->port.ops = &gb_port_ops;

	gb_tty->connection = connection;
	gb_tty->gbphy_dev = gbphy_dev;
	FUNC11(connection, gb_tty);
	FUNC12(gbphy_dev, gb_tty);

	retval = FUNC10(connection);
	if (retval)
		goto exit_release_minor;

	FUNC24(gb_tty, gb_tty->ctrlout);

	/* initialize the uart to be 9600n81 */
	gb_tty->line_coding.rate = FUNC4(9600);
	gb_tty->line_coding.format = GB_SERIAL_1_STOP_BITS;
	gb_tty->line_coding.parity = GB_SERIAL_NO_PARITY;
	gb_tty->line_coding.data_bits = 8;
	FUNC25(gb_tty);

	retval = FUNC9(connection);
	if (retval)
		goto exit_connection_disable;

	tty_dev = FUNC28(&gb_tty->port, gb_tty_driver, minor,
					   &gbphy_dev->dev);
	if (FUNC1(tty_dev)) {
		retval = FUNC2(tty_dev);
		goto exit_connection_disable;
	}

	FUNC14(gbphy_dev);
	return 0;

exit_connection_disable:
	FUNC8(connection);
exit_release_minor:
	FUNC23(gb_tty);
exit_kfifo_free:
	FUNC18(&gb_tty->write_fifo);
exit_buf_free:
	FUNC19(gb_tty->buffer);
exit_connection_destroy:
	FUNC7(connection);
exit_tty_free:
	FUNC19(gb_tty);

	return retval;
}