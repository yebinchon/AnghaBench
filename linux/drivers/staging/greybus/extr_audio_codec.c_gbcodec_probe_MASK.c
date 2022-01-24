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
struct snd_soc_codec {int /*<<< orphan*/  dev; } ;
struct gbaudio_codec_info {struct snd_soc_codec* codec; int /*<<< orphan*/  dai_list; int /*<<< orphan*/  lock; int /*<<< orphan*/  module_list; int /*<<< orphan*/  dev; } ;
struct gbaudio_codec_dai {int /*<<< orphan*/  list; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* gbaudio_dai ; 
 struct gbaudio_codec_info* gbcodec ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_codec*,struct gbaudio_codec_info*) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_codec *codec)
{
	int i;
	struct gbaudio_codec_info *info;
	struct gbaudio_codec_dai *dai;

	info = FUNC3(codec->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->dev = codec->dev;
	FUNC1(&info->module_list);
	FUNC5(&info->lock);
	FUNC1(&info->dai_list);

	/* init dai_list used to maintain runtime stream info */
	for (i = 0; i < FUNC0(gbaudio_dai); i++) {
		dai = FUNC3(codec->dev, sizeof(*dai), GFP_KERNEL);
		if (!dai)
			return -ENOMEM;
		dai->id = gbaudio_dai[i].id;
		FUNC4(&dai->list, &info->dai_list);
	}

	info->codec = codec;
	FUNC6(codec, info);
	gbcodec = info;

	FUNC2(codec->dev, 1);
	return 0;
}