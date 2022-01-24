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
struct visorinput_devdata {struct input_dev* visorinput_dev; } ;
struct TYPE_2__ {int arg1; int action; int arg2; } ;
struct visor_inputreport {TYPE_1__ activity; } ;
struct visor_device {int /*<<< orphan*/  visorchannel; int /*<<< orphan*/  device; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
#define  INPUTACTION_KEY_DOWN 138 
#define  INPUTACTION_KEY_DOWN_UP 137 
#define  INPUTACTION_KEY_UP 136 
#define  INPUTACTION_MOUSE_BUTTON_CLICK 135 
#define  INPUTACTION_MOUSE_BUTTON_DCLICK 134 
#define  INPUTACTION_MOUSE_BUTTON_DOWN 133 
#define  INPUTACTION_MOUSE_BUTTON_UP 132 
#define  INPUTACTION_SET_LOCKING_KEY_STATE 131 
#define  INPUTACTION_WHEEL_ROTATE_AWAY 130 
#define  INPUTACTION_WHEEL_ROTATE_TOWARD 129 
#define  INPUTACTION_XY_MOTION 128 
 int /*<<< orphan*/  REL_WHEEL ; 
 int FUNC0 (int) ; 
 struct visorinput_devdata* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct visor_inputreport*) ; 

__attribute__((used)) static void FUNC9(struct visor_device *dev)
{
	struct visor_inputreport r;
	int scancode, keycode;
	struct input_dev *visorinput_dev;
	int xmotion, ymotion, button;
	int i;
	struct visorinput_devdata *devdata = FUNC1(&dev->device);

	if (!devdata)
		return;

	visorinput_dev = devdata->visorinput_dev;

	while (!FUNC8(dev->visorchannel, 0, &r)) {
		scancode = r.activity.arg1;
		keycode = FUNC7(scancode);
		switch (r.activity.action) {
		case INPUTACTION_KEY_DOWN:
			FUNC4(visorinput_dev, keycode, 1);
			FUNC6(visorinput_dev);
			break;
		case INPUTACTION_KEY_UP:
			FUNC4(visorinput_dev, keycode, 0);
			FUNC6(visorinput_dev);
			break;
		case INPUTACTION_KEY_DOWN_UP:
			FUNC4(visorinput_dev, keycode, 1);
			FUNC6(visorinput_dev);
			FUNC4(visorinput_dev, keycode, 0);
			FUNC6(visorinput_dev);
			break;
		case INPUTACTION_SET_LOCKING_KEY_STATE:
			FUNC2(visorinput_dev, keycode,
					   r.activity.arg2);
			break;
		case INPUTACTION_XY_MOTION:
			xmotion = r.activity.arg1;
			ymotion = r.activity.arg2;
			FUNC3(visorinput_dev, ABS_X, xmotion);
			FUNC3(visorinput_dev, ABS_Y, ymotion);
			FUNC6(visorinput_dev);
			break;
		case INPUTACTION_MOUSE_BUTTON_DOWN:
			button = FUNC0(r.activity.arg1);
			if (button < 0)
				break;
			FUNC4(visorinput_dev, button, 1);
			FUNC6(visorinput_dev);
			break;
		case INPUTACTION_MOUSE_BUTTON_UP:
			button = FUNC0(r.activity.arg1);
			if (button < 0)
				break;
			FUNC4(visorinput_dev, button, 0);
			FUNC6(visorinput_dev);
			break;
		case INPUTACTION_MOUSE_BUTTON_CLICK:
			button = FUNC0(r.activity.arg1);
			if (button < 0)
				break;
			FUNC4(visorinput_dev, button, 1);
			FUNC6(visorinput_dev);
			FUNC4(visorinput_dev, button, 0);
			FUNC6(visorinput_dev);
			break;
		case INPUTACTION_MOUSE_BUTTON_DCLICK:
			button = FUNC0(r.activity.arg1);
			if (button < 0)
				break;
			for (i = 0; i < 2; i++) {
				FUNC4(visorinput_dev, button, 1);
				FUNC6(visorinput_dev);
				FUNC4(visorinput_dev, button, 0);
				FUNC6(visorinput_dev);
			}
			break;
		case INPUTACTION_WHEEL_ROTATE_AWAY:
			FUNC5(visorinput_dev, REL_WHEEL, 1);
			FUNC6(visorinput_dev);
			break;
		case INPUTACTION_WHEEL_ROTATE_TOWARD:
			FUNC5(visorinput_dev, REL_WHEEL, -1);
			FUNC6(visorinput_dev);
			break;
		default:
			/* Unsupported input action */
			break;
		}
	}
}