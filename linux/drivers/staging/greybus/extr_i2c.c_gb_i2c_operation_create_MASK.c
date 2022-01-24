#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct i2c_msg {int flags; scalar_t__ len; int /*<<< orphan*/  buf; } ;
struct gb_operation {TYPE_2__* request; } ;
struct gb_i2c_transfer_request {struct gb_i2c_transfer_op* ops; int /*<<< orphan*/  op_count; } ;
struct gb_i2c_transfer_op {int dummy; } ;
struct gb_i2c_device {TYPE_1__* gbphy_dev; } ;
struct gb_connection {int dummy; } ;
struct TYPE_4__ {struct gb_i2c_transfer_request* payload; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_I2C_TYPE_TRANSFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_M_RD ; 
 scalar_t__ U16_MAX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 struct gb_i2c_device* FUNC2 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gb_operation* FUNC4 (struct gb_connection*,int /*<<< orphan*/ ,size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct gb_operation *
FUNC6(struct gb_connection *connection,
			struct i2c_msg *msgs, u32 msg_count)
{
	struct gb_i2c_device *gb_i2c_dev = FUNC2(connection);
	struct gb_i2c_transfer_request *request;
	struct gb_operation *operation;
	struct gb_i2c_transfer_op *op;
	struct i2c_msg *msg;
	u32 data_out_size = 0;
	u32 data_in_size = 0;
	size_t request_size;
	void *data;
	u16 op_count;
	u32 i;

	if (msg_count > (u32)U16_MAX) {
		FUNC1(&gb_i2c_dev->gbphy_dev->dev, "msg_count (%u) too big\n",
			msg_count);
		return NULL;
	}
	op_count = (u16)msg_count;

	/*
	 * In addition to space for all message descriptors we need
	 * to have enough to hold all outbound message data.
	 */
	msg = msgs;
	for (i = 0; i < msg_count; i++, msg++)
		if (msg->flags & I2C_M_RD)
			data_in_size += (u32)msg->len;
		else
			data_out_size += (u32)msg->len;

	request_size = sizeof(*request);
	request_size += msg_count * sizeof(*op);
	request_size += data_out_size;

	/* Response consists only of incoming data */
	operation = FUNC4(connection, GB_I2C_TYPE_TRANSFER,
					request_size, data_in_size, GFP_KERNEL);
	if (!operation)
		return NULL;

	request = operation->request->payload;
	request->op_count = FUNC0(op_count);
	/* Fill in the ops array */
	op = &request->ops[0];
	msg = msgs;
	for (i = 0; i < msg_count; i++)
		FUNC3(op++, msg++);

	if (!data_out_size)
		return operation;

	/* Copy over the outgoing data; it starts after the last op */
	data = op;
	msg = msgs;
	for (i = 0; i < msg_count; i++) {
		if (!(msg->flags & I2C_M_RD)) {
			FUNC5(data, msg->buf, msg->len);
			data += msg->len;
		}
		msg++;
	}

	return operation;
}