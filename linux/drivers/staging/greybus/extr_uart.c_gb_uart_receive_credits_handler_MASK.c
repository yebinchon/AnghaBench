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
struct gb_uart_receive_credits_request {int /*<<< orphan*/  count; } ;
struct gb_tty {scalar_t__ credits; int /*<<< orphan*/  credits_complete; int /*<<< orphan*/  port; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  close_pending; TYPE_1__* gbphy_dev; int /*<<< orphan*/  write_lock; } ;
struct gb_operation {struct gb_message* request; struct gb_connection* connection; } ;
struct gb_message {int payload_size; struct gb_uart_receive_credits_request* payload; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ GB_UART_FIRMWARE_CREDITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,...) ; 
 struct gb_tty* FUNC2 (struct gb_connection*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct gb_operation *op)
{
	struct gb_connection *connection = op->connection;
	struct gb_tty *gb_tty = FUNC2(connection);
	struct gb_message *request = op->request;
	struct gb_uart_receive_credits_request *credit_request;
	unsigned long flags;
	unsigned int incoming_credits;
	int ret = 0;

	if (request->payload_size < sizeof(*credit_request)) {
		FUNC1(&gb_tty->gbphy_dev->dev,
			"short receive_credits event received (%zu < %zu)\n",
			request->payload_size,
			sizeof(*credit_request));
		return -EINVAL;
	}

	credit_request = request->payload;
	incoming_credits = FUNC3(credit_request->count);

	FUNC5(&gb_tty->write_lock, flags);
	gb_tty->credits += incoming_credits;
	if (gb_tty->credits > GB_UART_FIRMWARE_CREDITS) {
		gb_tty->credits -= incoming_credits;
		ret = -EINVAL;
	}
	FUNC6(&gb_tty->write_lock, flags);

	if (ret) {
		FUNC1(&gb_tty->gbphy_dev->dev,
			"invalid number of incoming credits: %d\n",
			incoming_credits);
		return ret;
	}

	if (!gb_tty->close_pending)
		FUNC4(&gb_tty->tx_work);

	/*
	 * the port the tty layer may be waiting for credits
	 */
	FUNC7(&gb_tty->port);

	if (gb_tty->credits == GB_UART_FIRMWARE_CREDITS)
		FUNC0(&gb_tty->credits_complete);

	return ret;
}