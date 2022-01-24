#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct gb_lights_get_light_config_response {int channel_count; int /*<<< orphan*/  name; } ;
struct gb_lights_get_light_config_request {size_t id; } ;
struct gb_lights {int /*<<< orphan*/  connection; struct gb_light* lights; } ;
struct gb_light {size_t id; int channels_count; TYPE_1__* channels; int /*<<< orphan*/  name; struct gb_lights* glights; } ;
struct gb_channel {int dummy; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  conf ;
struct TYPE_3__ {int id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GB_LIGHTS_TYPE_GET_LIGHT_CONFIG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NAMES_MAX ; 
 int FUNC0 (struct gb_light*,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gb_lights_get_light_config_request*,int,struct gb_lights_get_light_config_response*,int) ; 
 TYPE_1__* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gb_lights *glights, u8 id)
{
	struct gb_light *light = &glights->lights[id];
	struct gb_lights_get_light_config_request req;
	struct gb_lights_get_light_config_response conf;
	int ret;
	int i;

	light->glights = glights;
	light->id = id;

	req.id = id;

	ret = FUNC1(glights->connection,
				GB_LIGHTS_TYPE_GET_LIGHT_CONFIG,
				&req, sizeof(req), &conf, sizeof(conf));
	if (ret < 0)
		return ret;

	if (!conf.channel_count)
		return -EINVAL;
	if (!FUNC4(conf.name))
		return -EINVAL;

	light->channels_count = conf.channel_count;
	light->name = FUNC3(conf.name, NAMES_MAX, GFP_KERNEL);

	light->channels = FUNC2(light->channels_count,
				  sizeof(struct gb_channel), GFP_KERNEL);
	if (!light->channels)
		return -ENOMEM;

	/* First we collect all the configurations for all channels */
	for (i = 0; i < light->channels_count; i++) {
		light->channels[i].id = i;
		ret = FUNC0(light, &light->channels[i]);
		if (ret < 0)
			return ret;
	}

	return 0;
}