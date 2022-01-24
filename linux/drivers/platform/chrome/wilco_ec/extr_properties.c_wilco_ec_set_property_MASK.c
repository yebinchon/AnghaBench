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
struct wilco_ec_property_msg {int /*<<< orphan*/  length; int /*<<< orphan*/  data; int /*<<< orphan*/  property_id; } ;
struct wilco_ec_device {int dummy; } ;
struct ec_property_response {int /*<<< orphan*/  length; } ;
struct ec_property_request {int /*<<< orphan*/  data; int /*<<< orphan*/  length; int /*<<< orphan*/  property_id; int /*<<< orphan*/  op; } ;
typedef  int /*<<< orphan*/  rq ;

/* Variables and functions */
 int EBADMSG ; 
 int /*<<< orphan*/  EC_OP_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ec_property_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wilco_ec_device*,struct ec_property_request*,struct ec_property_response*) ; 

int FUNC4(struct wilco_ec_device *ec,
			  struct wilco_ec_property_msg *prop_msg)
{
	struct ec_property_request rq;
	struct ec_property_response rs;
	int ret;

	FUNC1(&rq, 0, sizeof(rq));
	rq.op = EC_OP_SET;
	FUNC2(prop_msg->property_id, rq.property_id);
	rq.length = prop_msg->length;
	FUNC0(rq.data, prop_msg->data, prop_msg->length);

	ret = FUNC3(ec, &rq, &rs);
	if (ret < 0)
		return ret;
	if (rs.length != prop_msg->length)
		return -EBADMSG;

	return 0;
}