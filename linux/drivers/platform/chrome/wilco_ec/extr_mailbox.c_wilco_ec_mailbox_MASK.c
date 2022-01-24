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
struct wilco_ec_request {int dummy; } ;
struct wilco_ec_message {int /*<<< orphan*/  request_size; int /*<<< orphan*/  response_size; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct wilco_ec_device {int /*<<< orphan*/  mailbox_lock; struct wilco_ec_request* data_buffer; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wilco_ec_message*,struct wilco_ec_request*) ; 
 int FUNC4 (struct wilco_ec_device*,struct wilco_ec_message*,struct wilco_ec_request*) ; 

int FUNC5(struct wilco_ec_device *ec, struct wilco_ec_message *msg)
{
	struct wilco_ec_request *rq;
	int ret;

	FUNC0(ec->dev, "type=%04x flags=%02x rslen=%zu rqlen=%zu\n",
		msg->type, msg->flags, msg->response_size, msg->request_size);

	FUNC1(&ec->mailbox_lock);
	/* Prepare request packet */
	rq = ec->data_buffer;
	FUNC3(msg, rq);

	ret = FUNC4(ec, msg, rq);
	FUNC2(&ec->mailbox_lock);

	return ret;

}