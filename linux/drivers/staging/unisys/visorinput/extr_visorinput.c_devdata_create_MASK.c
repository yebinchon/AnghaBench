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
struct visorinput_devdata {int paused; unsigned int keycode_table_bytes; int /*<<< orphan*/  lock_visor_dev; scalar_t__ interrupts_enabled; int /*<<< orphan*/  visorinput_dev; int /*<<< orphan*/  keycode_table; struct visor_device* dev; } ;
struct TYPE_2__ {unsigned int x_res; unsigned int y_res; } ;
struct visor_input_channel_data {TYPE_1__ mouse; } ;
struct visor_device {int /*<<< orphan*/  device; } ;
struct channel_header {int dummy; } ;
typedef  enum visorinput_dev_type { ____Placeholder_visorinput_dev_type } visorinput_dev_type ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int KEYCODE_TABLE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct visorinput_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct visorinput_devdata*) ; 
 struct visorinput_devdata* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct visorinput_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct visorinput_devdata*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct visor_device*) ; 
 unsigned int FUNC12 (struct visor_device*,int,struct visor_input_channel_data*,unsigned int) ; 
#define  visorinput_keyboard 129 
#define  visorinput_mouse 128 
 int /*<<< orphan*/  visorkbd_ext_keycode ; 
 int /*<<< orphan*/  visorkbd_keycode ; 

__attribute__((used)) static struct visorinput_devdata *FUNC13(struct visor_device *dev,
						 enum visorinput_dev_type dtype)
{
	struct visorinput_devdata *devdata = NULL;
	unsigned int extra_bytes = 0;
	unsigned int size, xres, yres, err;
	struct visor_input_channel_data data;

	if (dtype == visorinput_keyboard)
		/* allocate room for devdata->keycode_table, filled in below */
		extra_bytes = KEYCODE_TABLE_BYTES * 2;
	devdata = FUNC4(sizeof(*devdata) + extra_bytes, GFP_KERNEL);
	if (!devdata)
		return NULL;
	FUNC6(&devdata->lock_visor_dev);
	FUNC7(&devdata->lock_visor_dev);
	devdata->dev = dev;

	/*
	 * visorinput_open() can be called as soon as input_register_device()
	 * happens, and that will enable channel interrupts.  Setting paused
	 * prevents us from getting into visorinput_channel_interrupt() prior
	 * to the device structure being totally initialized.
	 */
	devdata->paused = true;

	/*
	 * This is an input device in a client guest partition, so we need to
	 * create whatever input nodes are necessary to deliver our inputs to
	 * the guest OS.
	 */
	switch (dtype) {
	case visorinput_keyboard:
		devdata->keycode_table_bytes = extra_bytes;
		FUNC5(devdata->keycode_table, visorkbd_keycode,
		       KEYCODE_TABLE_BYTES);
		FUNC5(devdata->keycode_table + KEYCODE_TABLE_BYTES,
		       visorkbd_ext_keycode, KEYCODE_TABLE_BYTES);
		devdata->visorinput_dev = FUNC9
			(devdata, devdata->keycode_table);
		if (!devdata->visorinput_dev)
			goto cleanups_register;
		break;
	case visorinput_mouse:
		size = sizeof(struct visor_input_channel_data);
		err = FUNC12(dev, sizeof(struct channel_header),
					    &data, size);
		if (err)
			goto cleanups_register;
		xres = data.mouse.x_res;
		yres = data.mouse.y_res;
		devdata->visorinput_dev = FUNC10(devdata, xres,
							     yres);
		if (!devdata->visorinput_dev)
			goto cleanups_register;
		break;
	default:
		/* No other input devices supported */
		break;
	}

	FUNC0(&dev->device, devdata);
	FUNC8(&devdata->lock_visor_dev);

	/*
	 * Device struct is completely set up now, with the exception of
	 * visorinput_dev being registered. We need to unlock before we
	 * register the device, because this can cause an on-stack call of
	 * visorinput_open(), which would deadlock if we had the lock.
	 */
	if (FUNC2(devdata->visorinput_dev)) {
		FUNC1(devdata->visorinput_dev);
		goto err_kfree_devdata;
	}

	FUNC7(&devdata->lock_visor_dev);
	/*
	 * Establish calls to visorinput_channel_interrupt() if that is the
	 * desired state that we've kept track of in interrupts_enabled while
	 * the device was being created.
	 */
	devdata->paused = false;
	if (devdata->interrupts_enabled)
		FUNC11(dev);
	FUNC8(&devdata->lock_visor_dev);

	return devdata;

cleanups_register:
	FUNC8(&devdata->lock_visor_dev);
err_kfree_devdata:
	FUNC3(devdata);
	return NULL;
}