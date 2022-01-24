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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct rpmsg_device {TYPE_1__ dev; int /*<<< orphan*/  ept; } ;
struct qcom_glink {scalar_t__ intentless; } ;
struct property {int length; int /*<<< orphan*/ * value; } ;
struct glink_core_rx_intent {int dummy; } ;
struct glink_channel {struct qcom_glink* glink; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int SZ_1K ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct property* FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_glink*,struct glink_channel*,struct glink_core_rx_intent*) ; 
 struct glink_core_rx_intent* FUNC4 (struct qcom_glink*,struct glink_channel*,int,int) ; 
 struct glink_channel* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rpmsg_device *rpdev)
{
	struct glink_channel *channel = FUNC5(rpdev->ept);
	struct device_node *np = rpdev->dev.of_node;
	struct qcom_glink *glink = channel->glink;
	struct glink_core_rx_intent *intent;
	const struct property *prop = NULL;
	__be32 defaults[] = { FUNC1(SZ_1K), FUNC1(5) };
	int num_intents;
	int num_groups = 1;
	__be32 *val = defaults;
	int size;

	if (glink->intentless)
		return 0;

	prop = FUNC2(np, "qcom,intents", NULL);
	if (prop) {
		val = prop->value;
		num_groups = prop->length / sizeof(u32) / 2;
	}

	/* Channel is now open, advertise base set of intents */
	while (num_groups--) {
		size = FUNC0(val++);
		num_intents = FUNC0(val++);
		while (num_intents--) {
			intent = FUNC4(glink, channel, size,
							 true);
			if (!intent)
				break;

			FUNC3(glink, channel, intent);
		}
	}
	return 0;
}