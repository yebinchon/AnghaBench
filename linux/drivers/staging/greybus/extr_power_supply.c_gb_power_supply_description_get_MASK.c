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
struct gb_power_supply_get_description_response {int /*<<< orphan*/  properties_count; int /*<<< orphan*/  type; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  model; int /*<<< orphan*/  manufacturer; } ;
struct gb_power_supply_get_description_request {int /*<<< orphan*/  psy_id; } ;
struct gb_power_supply {int /*<<< orphan*/  properties_count; int /*<<< orphan*/  type; void* serial_number; void* model_name; void* manufacturer; int /*<<< orphan*/  id; } ;
struct gb_connection {int dummy; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GB_POWER_SUPPLY_TYPE_GET_DESCRIPTION ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PROP_MAX ; 
 int FUNC0 (struct gb_connection*,int /*<<< orphan*/ ,struct gb_power_supply_get_description_request*,int,struct gb_power_supply_get_description_response*,int) ; 
 struct gb_connection* FUNC1 (struct gb_power_supply*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gb_power_supply *gbpsy)
{
	struct gb_connection *connection = FUNC1(gbpsy);
	struct gb_power_supply_get_description_request req;
	struct gb_power_supply_get_description_response resp;
	int ret;

	req.psy_id = gbpsy->id;

	ret = FUNC0(connection,
				GB_POWER_SUPPLY_TYPE_GET_DESCRIPTION,
				&req, sizeof(req), &resp, sizeof(resp));
	if (ret < 0)
		return ret;

	gbpsy->manufacturer = FUNC2(resp.manufacturer, PROP_MAX, GFP_KERNEL);
	if (!gbpsy->manufacturer)
		return -ENOMEM;
	gbpsy->model_name = FUNC2(resp.model, PROP_MAX, GFP_KERNEL);
	if (!gbpsy->model_name)
		return -ENOMEM;
	gbpsy->serial_number = FUNC2(resp.serial_number, PROP_MAX,
				       GFP_KERNEL);
	if (!gbpsy->serial_number)
		return -ENOMEM;

	gbpsy->type = FUNC3(resp.type);
	gbpsy->properties_count = resp.properties_count;

	return 0;
}