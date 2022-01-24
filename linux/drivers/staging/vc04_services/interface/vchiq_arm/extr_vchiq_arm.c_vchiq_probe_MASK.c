#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vchiq_drvdata {int /*<<< orphan*/  fw; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  VCHIQ_VERSION ; 
 int /*<<< orphan*/  VCHIQ_VERSION_MIN ; 
 void* bcm2835_audio ; 
 void* bcm2835_camera ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 struct device* FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  g_state ; 
 struct device_node* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct vchiq_drvdata*) ; 
 int /*<<< orphan*/  FUNC13 (struct device_node*) ; 
 int /*<<< orphan*/  vchiq_arm_log_level ; 
 TYPE_1__ vchiq_cdev ; 
 int /*<<< orphan*/  vchiq_class ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  vchiq_devid ; 
 int /*<<< orphan*/  vchiq_fops ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  vchiq_of_match ; 
 int FUNC18 (struct platform_device*,int /*<<< orphan*/ *) ; 
 void* FUNC19 (struct platform_device*,char*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct device_node *fw_node;
	const struct of_device_id *of_id;
	struct vchiq_drvdata *drvdata;
	struct device *vchiq_dev;
	int err;

	of_id = FUNC10(vchiq_of_match, pdev->dev.of_node);
	drvdata = (struct vchiq_drvdata *)of_id->data;
	if (!drvdata)
		return -EINVAL;

	fw_node = FUNC9(NULL, NULL,
					  "raspberrypi,bcm2835-firmware");
	if (!fw_node) {
		FUNC7(&pdev->dev, "Missing firmware node\n");
		return -ENOENT;
	}

	drvdata->fw = FUNC13(fw_node);
	FUNC11(fw_node);
	if (!drvdata->fw)
		return -EPROBE_DEFER;

	FUNC12(pdev, drvdata);

	err = FUNC18(pdev, &g_state);
	if (err)
		goto failed_platform_init;

	FUNC6(&vchiq_cdev, &vchiq_fops);
	vchiq_cdev.owner = THIS_MODULE;
	err = FUNC4(&vchiq_cdev, vchiq_devid, 1);
	if (err) {
		FUNC15(vchiq_arm_log_level,
			"Unable to register device");
		goto failed_platform_init;
	}

	vchiq_dev = FUNC8(vchiq_class, &pdev->dev, vchiq_devid, NULL,
				  "vchiq");
	if (FUNC0(vchiq_dev)) {
		err = FUNC3(vchiq_dev);
		goto failed_device_create;
	}

	FUNC14();

	FUNC16(vchiq_arm_log_level,
		"vchiq: initialised - version %d (min %d), device %d.%d",
		VCHIQ_VERSION, VCHIQ_VERSION_MIN,
		FUNC1(vchiq_devid), FUNC2(vchiq_devid));

	bcm2835_camera = FUNC19(pdev, "bcm2835-camera");
	bcm2835_audio = FUNC19(pdev, "bcm2835_audio");

	return 0;

failed_device_create:
	FUNC5(&vchiq_cdev);
failed_platform_init:
	FUNC17(vchiq_arm_log_level, "could not load vchiq");
	return err;
}