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
typedef  scalar_t__ u8 ;
struct wilco_ec_response {int data_size; int /*<<< orphan*/  data; scalar_t__ result; int /*<<< orphan*/  checksum; } ;
struct wilco_ec_request {int dummy; } ;
struct wilco_ec_message {int request_size; int flags; int response_size; int /*<<< orphan*/  response_data; scalar_t__* request_data; } ;
struct wilco_ec_device {int /*<<< orphan*/  dev; struct wilco_ec_response* data_buffer; TYPE_2__* io_data; TYPE_1__* io_command; } ;
struct TYPE_4__ {int /*<<< orphan*/  start; } ;
struct TYPE_3__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EC_MAILBOX_DATA_SIZE ; 
 int /*<<< orphan*/  EC_MAILBOX_START_COMMAND ; 
 int EIO ; 
 int EMSGSIZE ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MEC_IO_READ ; 
 int /*<<< orphan*/  MEC_IO_WRITE ; 
 int WILCO_EC_FLAG_NO_RESPONSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct wilco_ec_device*) ; 

__attribute__((used)) static int FUNC6(struct wilco_ec_device *ec,
			     struct wilco_ec_message *msg,
			     struct wilco_ec_request *rq)
{
	struct wilco_ec_response *rs;
	u8 checksum;
	u8 flag;

	/* Write request header, then data */
	FUNC0(MEC_IO_WRITE, 0, sizeof(*rq), (u8 *)rq);
	FUNC0(MEC_IO_WRITE, sizeof(*rq), msg->request_size,
				 msg->request_data);

	/* Start the command */
	FUNC4(EC_MAILBOX_START_COMMAND, ec->io_command->start);

	/* For some commands (eg shutdown) the EC will not respond, that's OK */
	if (msg->flags & WILCO_EC_FLAG_NO_RESPONSE) {
		FUNC1(ec->dev, "EC does not respond to this command\n");
		return 0;
	}

	/* Wait for it to complete */
	if (FUNC5(ec)) {
		FUNC1(ec->dev, "response timed out\n");
		return -ETIMEDOUT;
	}

	/* Check result */
	flag = FUNC2(ec->io_data->start);
	if (flag) {
		FUNC1(ec->dev, "bad response: 0x%02x\n", flag);
		return -EIO;
	}

	/* Read back response */
	rs = ec->data_buffer;
	checksum = FUNC0(MEC_IO_READ, 0,
					    sizeof(*rs) + EC_MAILBOX_DATA_SIZE,
					    (u8 *)rs);
	if (checksum) {
		FUNC1(ec->dev, "bad packet checksum 0x%02x\n", rs->checksum);
		return -EBADMSG;
	}

	if (rs->result) {
		FUNC1(ec->dev, "EC reported failure: 0x%02x\n", rs->result);
		return -EBADMSG;
	}

	if (rs->data_size != EC_MAILBOX_DATA_SIZE) {
		FUNC1(ec->dev, "unexpected packet size (%u != %u)",
			rs->data_size, EC_MAILBOX_DATA_SIZE);
		return -EMSGSIZE;
	}

	if (rs->data_size < msg->response_size) {
		FUNC1(ec->dev, "EC didn't return enough data (%u < %zu)",
			rs->data_size, msg->response_size);
		return -EMSGSIZE;
	}

	FUNC3(msg->response_data, rs->data, msg->response_size);

	return rs->data_size;
}