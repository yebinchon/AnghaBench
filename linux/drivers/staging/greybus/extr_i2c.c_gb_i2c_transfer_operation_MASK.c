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
typedef  int u32 ;
struct i2c_msg {int dummy; } ;
struct gb_operation {TYPE_1__* response; } ;
struct gb_i2c_transfer_response {int dummy; } ;
struct gb_i2c_device {TYPE_2__* gbphy_dev; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;
struct TYPE_4__ {struct gb_i2c_transfer_response* payload; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_msg*,int,struct gb_i2c_transfer_response*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct gb_operation* FUNC3 (struct gb_connection*,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_operation*) ; 
 int FUNC5 (struct gb_operation*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(struct gb_i2c_device *gb_i2c_dev,
				     struct i2c_msg *msgs, u32 msg_count)
{
	struct gb_connection *connection = gb_i2c_dev->connection;
	struct device *dev = &gb_i2c_dev->gbphy_dev->dev;
	struct gb_operation *operation;
	int ret;

	operation = FUNC3(connection, msgs, msg_count);
	if (!operation)
		return -ENOMEM;

	ret = FUNC6(gb_i2c_dev->gbphy_dev);
	if (ret)
		goto exit_operation_put;

	ret = FUNC5(operation);
	if (!ret) {
		struct gb_i2c_transfer_response *response;

		response = operation->response->payload;
		FUNC1(msgs, msg_count, response);
		ret = msg_count;
	} else if (!FUNC2(ret)) {
		FUNC0(dev, "transfer operation failed (%d)\n", ret);
	}

	FUNC7(gb_i2c_dev->gbphy_dev);

exit_operation_put:
	FUNC4(operation);

	return ret;
}