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
struct fw_info {int /*<<< orphan*/  version; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {char const* num; } ;
struct allegro_dev {int /*<<< orphan*/ * m2m_dev; TYPE_2__ video_dev; int /*<<< orphan*/  v4l2_dev; TYPE_1__* plat_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct allegro_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct allegro_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct allegro_dev*) ; 
 struct fw_info* FUNC4 (struct allegro_dev*,struct firmware const*,struct firmware const*) ; 
 int /*<<< orphan*/  allegro_m2m_ops ; 
 int /*<<< orphan*/  FUNC5 (struct allegro_dev*) ; 
 int FUNC6 (struct allegro_dev*,struct fw_info const*) ; 
 int FUNC7 (struct allegro_dev*) ; 
 int FUNC8 (struct allegro_dev*) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC9 (struct firmware const*) ; 
 int FUNC10 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(const struct firmware *fw, void *context)
{
	struct allegro_dev *dev = context;
	const char *fw_codec_name = "al5e.fw";
	const struct firmware *fw_codec;
	int err;
	const struct fw_info *info;

	if (!fw)
		return;

	FUNC11(1, debug, &dev->v4l2_dev,
		 "requesting codec firmware '%s'\n", fw_codec_name);
	err = FUNC10(&fw_codec, fw_codec_name, &dev->plat_dev->dev);
	if (err)
		goto err_release_firmware;

	info = FUNC4(dev, fw, fw_codec);
	if (!info) {
		FUNC12(&dev->v4l2_dev, "firmware is not supported\n");
		goto err_release_firmware_codec;
	}

	FUNC13(&dev->v4l2_dev,
		  "using mcu firmware version '%s'\n", info->version);

	/* Ensure that the mcu is sleeping at the reset vector */
	err = FUNC7(dev);
	if (err) {
		FUNC12(&dev->v4l2_dev, "failed to reset mcu\n");
		goto err_release_firmware_codec;
	}

	FUNC1(dev, fw->data, fw->size);
	FUNC2(dev, fw_codec->data, fw_codec->size);

	err = FUNC6(dev, info);
	if (err) {
		FUNC12(&dev->v4l2_dev, "failed to initialize mcu\n");
		goto err_free_fw_codec;
	}

	dev->m2m_dev = FUNC14(&allegro_m2m_ops);
	if (FUNC0(dev->m2m_dev)) {
		FUNC12(&dev->v4l2_dev, "failed to init mem2mem device\n");
		goto err_mcu_hw_deinit;
	}

	err = FUNC8(dev);
	if (err) {
		FUNC12(&dev->v4l2_dev, "failed to register video device\n");
		goto err_m2m_release;
	}

	FUNC11(1, debug, &dev->v4l2_dev,
		 "allegro codec registered as /dev/video%d\n",
		 dev->video_dev.num);

	FUNC9(fw_codec);
	FUNC9(fw);

	return;

err_m2m_release:
	FUNC15(dev->m2m_dev);
	dev->m2m_dev = NULL;
err_mcu_hw_deinit:
	FUNC5(dev);
err_free_fw_codec:
	FUNC3(dev);
err_release_firmware_codec:
	FUNC9(fw_codec);
err_release_firmware:
	FUNC9(fw);
}