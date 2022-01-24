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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct platform_device* pdev; int /*<<< orphan*/  capture_sample; int /*<<< orphan*/  send_event; } ;
struct TYPE_4__ {struct platform_device* pdev; struct hid_sensor_hub_device* hsdev; } ;
struct hid_time_state {int /*<<< orphan*/ * rtc; TYPE_1__ callbacks; TYPE_2__ common_attributes; int /*<<< orphan*/  comp_last_time; int /*<<< orphan*/  lock_last_time; } ;
struct hid_sensor_hub_device {int /*<<< orphan*/  hdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_USAGE_SENSOR_TIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct hid_sensor_hub_device* FUNC3 (int /*<<< orphan*/ *) ; 
 struct hid_time_state* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct hid_sensor_hub_device*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  hid_time_capture_sample ; 
 int FUNC9 (struct platform_device*,struct hid_sensor_hub_device*,int /*<<< orphan*/ ,struct hid_time_state*) ; 
 int /*<<< orphan*/  hid_time_proc_event ; 
 int /*<<< orphan*/  hid_time_rtc_ops ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct hid_time_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct hid_sensor_hub_device*) ; 
 int FUNC13 (struct hid_sensor_hub_device*) ; 
 int FUNC14 (struct hid_sensor_hub_device*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct hid_sensor_hub_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	int ret = 0;
	struct hid_sensor_hub_device *hsdev = FUNC3(&pdev->dev);
	struct hid_time_state *time_state = FUNC4(&pdev->dev,
		sizeof(struct hid_time_state), GFP_KERNEL);

	if (time_state == NULL)
		return -ENOMEM;

	FUNC11(pdev, time_state);

	FUNC16(&time_state->lock_last_time);
	FUNC10(&time_state->comp_last_time);
	time_state->common_attributes.hsdev = hsdev;
	time_state->common_attributes.pdev = pdev;

	ret = FUNC8(hsdev,
				HID_USAGE_SENSOR_TIME,
				&time_state->common_attributes);
	if (ret) {
		FUNC2(&pdev->dev, "failed to setup common attributes!\n");
		return ret;
	}

	ret = FUNC9(pdev, hsdev, HID_USAGE_SENSOR_TIME,
					time_state);
	if (ret) {
		FUNC2(&pdev->dev, "failed to setup attributes!\n");
		return ret;
	}

	time_state->callbacks.send_event = hid_time_proc_event;
	time_state->callbacks.capture_sample = hid_time_capture_sample;
	time_state->callbacks.pdev = pdev;
	ret = FUNC14(hsdev, HID_USAGE_SENSOR_TIME,
					&time_state->callbacks);
	if (ret < 0) {
		FUNC2(&pdev->dev, "register callback failed!\n");
		return ret;
	}

	ret = FUNC13(hsdev);
	if (ret) {
		FUNC2(&pdev->dev, "failed to open sensor hub device!\n");
		goto err_open;
	}

	/*
	 * Enable HID input processing early in order to be able to read the
	 * clock already in devm_rtc_device_register().
	 */
	FUNC6(hsdev->hdev);

	time_state->rtc = FUNC5(&pdev->dev,
					"hid-sensor-time", &hid_time_rtc_ops,
					THIS_MODULE);

	if (FUNC0(time_state->rtc)) {
		FUNC7(hsdev->hdev);
		ret = FUNC1(time_state->rtc);
		time_state->rtc = NULL;
		FUNC2(&pdev->dev, "rtc device register failed!\n");
		goto err_rtc;
	}

	return ret;

err_rtc:
	FUNC12(hsdev);
err_open:
	FUNC15(hsdev, HID_USAGE_SENSOR_TIME);
	return ret;
}