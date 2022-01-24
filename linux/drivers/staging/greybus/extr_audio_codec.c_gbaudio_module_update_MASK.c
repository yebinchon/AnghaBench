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
struct snd_soc_dapm_widget {scalar_t__ id; int /*<<< orphan*/  name; int /*<<< orphan*/  sname; } ;
struct gbaudio_module_info {int /*<<< orphan*/  dev; } ;
struct gbaudio_codec_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gbaudio_module_info*,int) ; 
 int FUNC3 (struct gbaudio_module_info*,int) ; 
 int FUNC4 (struct gbaudio_codec_info*,struct gbaudio_module_info*,int) ; 
 int FUNC5 (struct gbaudio_codec_info*,struct gbaudio_module_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ snd_soc_dapm_aif_in ; 
 scalar_t__ snd_soc_dapm_aif_out ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,char*,int*,char*) ; 

int FUNC9(struct gbaudio_codec_info *codec,
			  struct snd_soc_dapm_widget *w,
			  struct gbaudio_module_info *module, int enable)
{
	int dai_id, ret;
	char intf_name[NAME_SIZE], dir[NAME_SIZE];

	FUNC0(module->dev, "%s:Module update %s sequence\n", w->name,
		enable ? "Enable" : "Disable");

	if ((w->id != snd_soc_dapm_aif_in) && (w->id != snd_soc_dapm_aif_out)) {
		FUNC0(codec->dev, "No action required for %s\n", w->name);
		return 0;
	}

	/* parse dai_id from AIF widget's stream_name */
	ret = FUNC8(w->sname, "%s %d %s", intf_name, &dai_id, dir);
	if (ret < 3) {
		FUNC1(codec->dev, "Error while parsing dai_id for %s\n",
			w->name);
		return -EINVAL;
	}

	FUNC6(&codec->lock);
	if (w->id == snd_soc_dapm_aif_in) {
		if (enable)
			ret = FUNC5(codec, module, dai_id);
		else
			ret = FUNC3(module, dai_id);
	} else if (w->id == snd_soc_dapm_aif_out) {
		if (enable)
			ret = FUNC4(codec, module, dai_id);
		else
			ret = FUNC2(module, dai_id);
	}

	FUNC7(&codec->lock);

	return ret;
}