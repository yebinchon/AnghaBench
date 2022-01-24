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
struct TYPE_2__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; char* phys; int* evbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  keybit; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BUS_VIRTUAL ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REL ; 
 unsigned int PIXELS_ACROSS_DEFAULT ; 
 unsigned int PIXELS_DOWN_DEFAULT ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 struct input_dev* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  visorinput_close ; 
 int /*<<< orphan*/  visorinput_open ; 

__attribute__((used)) static struct input_dev *FUNC6(void *devdata, unsigned int xres,
					    unsigned int yres)
{
	struct input_dev *visorinput_dev = FUNC1();

	if (!visorinput_dev)
		return NULL;

	visorinput_dev->name = "visor Mouse";
	visorinput_dev->phys = "visormou:input0";
	visorinput_dev->id.bustype = BUS_VIRTUAL;
	visorinput_dev->id.vendor = 0x0001;
	visorinput_dev->id.product = 0x0002;
	visorinput_dev->id.version = 0x0100;

	visorinput_dev->evbit[0] = FUNC0(EV_KEY) | FUNC0(EV_ABS);
	FUNC5(BTN_LEFT, visorinput_dev->keybit);
	FUNC5(BTN_RIGHT, visorinput_dev->keybit);
	FUNC5(BTN_MIDDLE, visorinput_dev->keybit);

	if (xres == 0)
		xres = PIXELS_ACROSS_DEFAULT;
	if (yres == 0)
		yres = PIXELS_DOWN_DEFAULT;
	FUNC2(visorinput_dev, ABS_X, 0, xres, 0, 0);
	FUNC2(visorinput_dev, ABS_Y, 0, yres, 0, 0);

	visorinput_dev->open = visorinput_open;
	visorinput_dev->close = visorinput_close;
	/* pre input_register! */
	FUNC4(visorinput_dev, devdata);
	FUNC3(visorinput_dev, EV_REL, REL_WHEEL);

	return visorinput_dev;
}