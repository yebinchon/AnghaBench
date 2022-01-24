#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct usb_serial {TYPE_3__* interface; TYPE_2__* dev; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct firmware {int* data; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  idProduct; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  RQ_VENDOR_QUERY_FW_CONFIG ; 
 int /*<<< orphan*/  RQ_VENDOR_RESET_DEVICE ; 
 size_t VER_ADDR_1 ; 
 size_t VER_ADDR_2 ; 
 size_t VER_ADDR_3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_serial*,struct firmware const*) ; 
 int FUNC5 (struct usb_serial*,int*) ; 
 int FUNC6 (struct usb_serial*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct firmware const*) ; 
 int FUNC8 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_serial*,void*) ; 

__attribute__((used)) static int FUNC11(struct usb_serial *serial,
			 const struct usb_device_id *id)
{
	u16 productid = FUNC3(serial->dev->descriptor.idProduct);
	const struct firmware *fw_p = NULL;
	u32 version;
	int local_ver;
	char buf[32];
	int err;

	/* Load our firmware */
	err = FUNC6(serial, RQ_VENDOR_QUERY_FW_CONFIG, 0, 0);
	if (err) {
		FUNC6(serial, RQ_VENDOR_RESET_DEVICE, 0, 0);
		return err;
	}

	err = FUNC5(serial, &version);
	if (err < 0)
		return err;

	FUNC0(&serial->interface->dev, "Device firmware version v%x.%x.%x\n",
		(version & 0xff0000) >> 16,
		(version & 0xff00) >> 8,
		(version & 0xff));

	FUNC9(buf, sizeof(buf) - 1, "moxa/moxa-%04x.fw", productid);

	err = FUNC8(&fw_p, buf, &serial->interface->dev);
	if (err) {
		FUNC2(&serial->interface->dev, "Firmware %s not found\n",
			 buf);

		/* Use the firmware already in the device */
		err = 0;
	} else {
		local_ver = ((fw_p->data[VER_ADDR_1] << 16) |
			     (fw_p->data[VER_ADDR_2] << 8) |
			     fw_p->data[VER_ADDR_3]);
		FUNC0(&serial->interface->dev,
			"Available firmware version v%x.%x.%x\n",
			fw_p->data[VER_ADDR_1], fw_p->data[VER_ADDR_2],
			fw_p->data[VER_ADDR_3]);
		if (local_ver > version) {
			err = FUNC4(serial, fw_p);
			if (err)
				goto out;
			err  = FUNC5(serial, &version);
			if (err < 0)
				goto out;
		}
	}

	FUNC1(&serial->interface->dev,
		 "Using device firmware version v%x.%x.%x\n",
		 (version & 0xff0000) >> 16,
		 (version & 0xff00) >> 8,
		 (version & 0xff));

	/*
	 * Contains the features of this hardware. Store away for
	 * later use, eg, number of ports.
	 */
	FUNC10(serial, (void *)id->driver_info);
out:
	if (fw_p)
		FUNC7(fw_p);
	return err;
}