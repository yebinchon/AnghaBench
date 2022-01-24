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
struct snd_soc_dapm_route {char* control; void* source; void* sink; } ;
struct gbaudio_module_info {int num_dapm_routes; struct snd_soc_dapm_route* dapm_routes; int /*<<< orphan*/  dev; } ;
struct gb_audio_route {scalar_t__ control_id; int /*<<< orphan*/  index; int /*<<< orphan*/  destination_id; int /*<<< orphan*/  source_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ GBAUDIO_INVALID_ID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*,char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct snd_soc_dapm_route*) ; 
 struct snd_soc_dapm_route* FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct gbaudio_module_info*,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct gbaudio_module_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gbaudio_module_info *module,
				       struct gb_audio_route *routes)
{
	int i, ret;
	struct snd_soc_dapm_route *dapm_routes;
	struct gb_audio_route *curr;
	size_t size;

	size = sizeof(struct snd_soc_dapm_route) * module->num_dapm_routes;
	dapm_routes = FUNC3(module->dev, size, GFP_KERNEL);
	if (!dapm_routes)
		return -ENOMEM;

	module->dapm_routes = dapm_routes;
	curr = routes;

	for (i = 0; i < module->num_dapm_routes; i++) {
		dapm_routes->sink =
			FUNC5(module, curr->destination_id);
		if (!dapm_routes->sink) {
			FUNC1(module->dev, "%d:%d:%d:%d - Invalid sink\n",
				curr->source_id, curr->destination_id,
				curr->control_id, curr->index);
			ret = -EINVAL;
			goto error;
		}
		dapm_routes->source =
			FUNC5(module, curr->source_id);
		if (!dapm_routes->source) {
			FUNC1(module->dev, "%d:%d:%d:%d - Invalid source\n",
				curr->source_id, curr->destination_id,
				curr->control_id, curr->index);
			ret = -EINVAL;
			goto error;
		}
		dapm_routes->control =
			FUNC4(module,
					      curr->control_id,
					      curr->index);
		if ((curr->control_id !=  GBAUDIO_INVALID_ID) &&
		    !dapm_routes->control) {
			FUNC1(module->dev, "%d:%d:%d:%d - Invalid control\n",
				curr->source_id, curr->destination_id,
				curr->control_id, curr->index);
			ret = -EINVAL;
			goto error;
		}
		FUNC0(module->dev, "Route {%s, %s, %s}\n", dapm_routes->sink,
			(dapm_routes->control) ? dapm_routes->control : "NULL",
			dapm_routes->source);
		dapm_routes++;
		curr++;
	}

	return 0;

error:
	FUNC2(module->dev, module->dapm_routes);
	return ret;
}