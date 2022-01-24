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
struct gb_tty {TYPE_1__* gbphy_dev; } ;
struct gb_operation {int type; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  GB_UART_TYPE_RECEIVE_CREDITS 130 
#define  GB_UART_TYPE_RECEIVE_DATA 129 
#define  GB_UART_TYPE_SERIAL_STATE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct gb_tty* FUNC1 (struct gb_connection*) ; 
 int FUNC2 (struct gb_operation*) ; 
 int FUNC3 (struct gb_operation*) ; 
 int FUNC4 (struct gb_operation*) ; 

__attribute__((used)) static int FUNC5(struct gb_operation *op)
{
	struct gb_connection *connection = op->connection;
	struct gb_tty *gb_tty = FUNC1(connection);
	int type = op->type;
	int ret;

	switch (type) {
	case GB_UART_TYPE_RECEIVE_DATA:
		ret = FUNC3(op);
		break;
	case GB_UART_TYPE_SERIAL_STATE:
		ret = FUNC4(op);
		break;
	case GB_UART_TYPE_RECEIVE_CREDITS:
		ret = FUNC2(op);
		break;
	default:
		FUNC0(&gb_tty->gbphy_dev->dev,
			"unsupported unsolicited request: 0x%02x\n", type);
		ret = -EINVAL;
	}

	return ret;
}