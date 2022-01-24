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
struct TYPE_3__ {int ac_info; } ;
struct rtllib_qos_parameter_info {TYPE_1__ info_element; } ;
struct rtllib_qos_information_element {int ac_info; } ;
struct TYPE_4__ {int param_count; int supported; } ;
struct rtllib_network {TYPE_2__ qos_data; int /*<<< orphan*/  flags; } ;
struct rtllib_info_element {int dummy; } ;
struct rtllib_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETWORK_HAS_QOS_INFORMATION ; 
 int /*<<< orphan*/  NETWORK_HAS_QOS_PARAMETERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtllib_qos_parameter_info*,TYPE_2__*) ; 
 int FUNC2 (struct rtllib_qos_information_element*,struct rtllib_info_element*) ; 
 int FUNC3 (struct rtllib_qos_parameter_info*,struct rtllib_info_element*) ; 

__attribute__((used)) static int FUNC4(struct rtllib_device *ieee,
					  struct rtllib_info_element
					     *info_element,
					  struct rtllib_network *network)
{
	int rc = 0;
	struct rtllib_qos_information_element qos_info_element;

	rc = FUNC2(&qos_info_element, info_element);

	if (rc == 0) {
		network->qos_data.param_count = qos_info_element.ac_info & 0x0F;
		network->flags |= NETWORK_HAS_QOS_INFORMATION;
	} else {
		struct rtllib_qos_parameter_info param_element;

		rc = FUNC3(&param_element,
						      info_element);
		if (rc == 0) {
			FUNC1(&param_element,
							       &(network->qos_data));
			network->flags |= NETWORK_HAS_QOS_PARAMETERS;
			network->qos_data.param_count =
			    param_element.info_element.ac_info & 0x0F;
		}
	}

	if (rc == 0) {
		FUNC0(ieee->dev, "QoS is supported\n");
		network->qos_data.supported = 1;
	}
	return rc;
}