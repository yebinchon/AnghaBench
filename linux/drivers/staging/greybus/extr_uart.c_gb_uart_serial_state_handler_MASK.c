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
struct gb_uart_serial_state_request {int /*<<< orphan*/  control; } ;
struct gb_tty {int /*<<< orphan*/  ctrlin; TYPE_1__* gbphy_dev; } ;
struct gb_operation {struct gb_message* request; struct gb_connection* connection; } ;
struct gb_message {int payload_size; struct gb_uart_serial_state_request* payload; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 struct gb_tty* FUNC1 (struct gb_connection*) ; 

__attribute__((used)) static int FUNC2(struct gb_operation *op)
{
	struct gb_connection *connection = op->connection;
	struct gb_tty *gb_tty = FUNC1(connection);
	struct gb_message *request = op->request;
	struct gb_uart_serial_state_request *serial_state;

	if (request->payload_size < sizeof(*serial_state)) {
		FUNC0(&gb_tty->gbphy_dev->dev,
			"short serial-state event received (%zu < %zu)\n",
			request->payload_size, sizeof(*serial_state));
		return -EINVAL;
	}

	serial_state = request->payload;
	gb_tty->ctrlin = serial_state->control;

	return 0;
}