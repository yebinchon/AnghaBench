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
struct ec_response_charge_port_count {int port_count; } ;
struct charger_data {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  resp ;

/* Variables and functions */
 int /*<<< orphan*/  EC_CMD_CHARGE_PORT_COUNT ; 
 int FUNC0 (struct charger_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ec_response_charge_port_count*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct charger_data *charger)
{
	struct ec_response_charge_port_count resp;
	int ret;

	ret = FUNC0(charger, 0,
					    EC_CMD_CHARGE_PORT_COUNT,
					    NULL, 0, &resp, sizeof(resp));
	if (ret < 0) {
		FUNC1(charger->dev,
			"Unable to get the number of ports (err:0x%x)\n", ret);
		return ret;
	}

	return resp.port_count;
}