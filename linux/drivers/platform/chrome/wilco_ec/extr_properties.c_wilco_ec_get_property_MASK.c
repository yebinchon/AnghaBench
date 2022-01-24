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
struct wilco_ec_property_msg {int /*<<< orphan*/  data; int /*<<< orphan*/  length; int /*<<< orphan*/  property_id; } ;
struct wilco_ec_device {int dummy; } ;
struct ec_property_response {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct ec_property_request {int /*<<< orphan*/  property_id; int /*<<< orphan*/  op; } ;
typedef  int /*<<< orphan*/  rq ;

/* Variables and functions */
 int /*<<< orphan*/  EC_OP_GET ; 
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
	rq.op = EC_OP_GET;
	FUNC2(prop_msg->property_id, rq.property_id);

	ret = FUNC3(ec, &rq, &rs);
	if (ret < 0)
		return ret;

	prop_msg->length = rs.length;
	FUNC0(prop_msg->data, rs.data, rs.length);

	return 0;
}