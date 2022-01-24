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
typedef  size_t u8 ;
struct gb_operation {size_t type; struct gb_message* request; struct gb_connection* connection; } ;
struct gb_message {int payload_size; struct gb_lights_event_request* payload; } ;
struct gb_lights_event_request {size_t light_id; size_t event; } ;
struct gb_lights {size_t lights_count; int /*<<< orphan*/  lights_lock; struct gb_light* lights; } ;
struct gb_light {int /*<<< orphan*/  ready; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t GB_LIGHTS_LIGHT_CONFIG ; 
 size_t GB_LIGHTS_TYPE_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,size_t,...) ; 
 struct gb_lights* FUNC1 (struct gb_connection*) ; 
 int FUNC2 (struct gb_lights*,size_t) ; 
 int FUNC3 (struct gb_light*) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_light*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct gb_operation *op)
{
	struct gb_connection *connection = op->connection;
	struct device *dev = &connection->bundle->dev;
	struct gb_lights *glights = FUNC1(connection);
	struct gb_light *light;
	struct gb_message *request;
	struct gb_lights_event_request *payload;
	int ret =  0;
	u8 light_id;
	u8 event;

	if (op->type != GB_LIGHTS_TYPE_EVENT) {
		FUNC0(dev, "Unsupported unsolicited event: %u\n", op->type);
		return -EINVAL;
	}

	request = op->request;

	if (request->payload_size < sizeof(*payload)) {
		FUNC0(dev, "Wrong event size received (%zu < %zu)\n",
			request->payload_size, sizeof(*payload));
		return -EINVAL;
	}

	payload = request->payload;
	light_id = payload->light_id;

	if (light_id >= glights->lights_count ||
	    !glights->lights[light_id].ready) {
		FUNC0(dev, "Event received for unconfigured light id: %d\n",
			light_id);
		return -EINVAL;
	}

	event = payload->event;

	if (event & GB_LIGHTS_LIGHT_CONFIG) {
		light = &glights->lights[light_id];

		FUNC5(&glights->lights_lock);
		FUNC4(light);
		ret = FUNC2(glights, light_id);
		if (!ret)
			ret = FUNC3(light);
		if (ret < 0)
			FUNC4(light);
		FUNC6(&glights->lights_lock);
	}

	return ret;
}