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
struct gbaudio_module_info {unsigned int jack_mask; unsigned int button_mask; int /*<<< orphan*/  dev; scalar_t__ route_offset; scalar_t__ widget_offset; scalar_t__ control_offset; } ;
struct gb_audio_widget {int dummy; } ;
struct gb_audio_topology {int /*<<< orphan*/  jack_type; } ;
struct gb_audio_route {int dummy; } ;
struct gb_audio_control {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int GBCODEC_JACK_BUTTON_MASK ; 
 unsigned int GBCODEC_JACK_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct gbaudio_module_info*,struct gb_audio_topology*) ; 
 int FUNC3 (struct gbaudio_module_info*,struct gb_audio_control*) ; 
 int FUNC4 (struct gbaudio_module_info*,struct gb_audio_route*) ; 
 int FUNC5 (struct gbaudio_module_info*,struct gb_audio_widget*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct gbaudio_module_info *module,
			    struct gb_audio_topology *tplg_data)
{
	int ret;
	struct gb_audio_control *controls;
	struct gb_audio_widget *widgets;
	struct gb_audio_route *routes;
	unsigned int jack_type;

	if (!tplg_data)
		return -EINVAL;

	ret = FUNC2(module, tplg_data);
	if (ret) {
		FUNC1(module->dev, "%d: Error in parsing topology header\n",
			ret);
		return ret;
	}

	/* process control */
	controls = (struct gb_audio_control *)module->control_offset;
	ret = FUNC3(module, controls);
	if (ret) {
		FUNC1(module->dev,
			"%d: Error in parsing controls data\n", ret);
		return ret;
	}
	FUNC0(module->dev, "Control parsing finished\n");

	/* process widgets */
	widgets = (struct gb_audio_widget *)module->widget_offset;
	ret = FUNC5(module, widgets);
	if (ret) {
		FUNC1(module->dev,
			"%d: Error in parsing widgets data\n", ret);
		return ret;
	}
	FUNC0(module->dev, "Widget parsing finished\n");

	/* process route */
	routes = (struct gb_audio_route *)module->route_offset;
	ret = FUNC4(module, routes);
	if (ret) {
		FUNC1(module->dev,
			"%d: Error in parsing routes data\n", ret);
		return ret;
	}
	FUNC0(module->dev, "Route parsing finished\n");

	/* parse jack capabilities */
	jack_type = FUNC6(tplg_data->jack_type);
	if (jack_type) {
		module->jack_mask = jack_type & GBCODEC_JACK_MASK;
		module->button_mask = jack_type & GBCODEC_JACK_BUTTON_MASK;
	}

	return ret;
}