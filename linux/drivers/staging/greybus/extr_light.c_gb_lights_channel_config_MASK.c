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
struct led_classdev {char* name; int /*<<< orphan*/  max_brightness; } ;
struct gb_lights_get_channel_config_response {int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  mode_name; int /*<<< orphan*/  color_name; int /*<<< orphan*/  color; int /*<<< orphan*/  flags; int /*<<< orphan*/  mode; } ;
struct gb_lights_get_channel_config_request {int /*<<< orphan*/  channel_id; int /*<<< orphan*/  light_id; } ;
struct gb_light {int has_flash; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct gb_connection {int dummy; } ;
struct gb_channel {void* mode_name; void* color_name; struct led_classdev* led; void* color; void* flags; void* mode; struct gb_light* light; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  conf ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GB_LIGHTS_TYPE_GET_CHANNEL_CONFIG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NAMES_MAX ; 
 int FUNC0 (struct gb_channel*,struct led_classdev*) ; 
 int FUNC1 (struct gb_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_channel*,struct led_classdev*) ; 
 int FUNC3 (struct gb_connection*,int /*<<< orphan*/ ,struct gb_lights_get_channel_config_request*,int,struct gb_lights_get_channel_config_response*,int) ; 
 struct led_classdev* FUNC4 (struct gb_channel*) ; 
 struct gb_connection* FUNC5 (struct gb_light*) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_channel*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*,void*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct gb_light *light,
				    struct gb_channel *channel)
{
	struct gb_lights_get_channel_config_response conf;
	struct gb_lights_get_channel_config_request req;
	struct gb_connection *connection = FUNC5(light);
	struct led_classdev *cdev = FUNC4(channel);
	char *name;
	int ret;

	req.light_id = light->id;
	req.channel_id = channel->id;

	ret = FUNC3(connection, GB_LIGHTS_TYPE_GET_CHANNEL_CONFIG,
				&req, sizeof(req), &conf, sizeof(conf));
	if (ret < 0)
		return ret;

	channel->light = light;
	channel->mode = FUNC9(conf.mode);
	channel->flags = FUNC9(conf.flags);
	channel->color = FUNC9(conf.color);
	channel->color_name = FUNC8(conf.color_name, NAMES_MAX, GFP_KERNEL);
	if (!channel->color_name)
		return -ENOMEM;
	channel->mode_name = FUNC8(conf.mode_name, NAMES_MAX, GFP_KERNEL);
	if (!channel->mode_name)
		return -ENOMEM;

	channel->led = cdev;

	name = FUNC7(GFP_KERNEL, "%s:%s:%s", light->name,
			 channel->color_name, channel->mode_name);
	if (!name)
		return -ENOMEM;

	cdev->name = name;

	cdev->max_brightness = conf.max_brightness;

	ret = FUNC0(channel, cdev);
	if (ret < 0)
		return ret;

	FUNC2(channel, cdev);

	/*
	 * If it is not a flash related channel (flash, torch or indicator) we
	 * are done here. If not, continue and fetch flash related
	 * configurations.
	 */
	if (!FUNC6(channel))
		return ret;

	light->has_flash = true;

	return FUNC1(channel);
}