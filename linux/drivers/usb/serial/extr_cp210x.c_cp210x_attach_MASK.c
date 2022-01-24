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
struct usb_serial {TYPE_1__* interface; } ;
struct cp210x_serial_private {int /*<<< orphan*/  partnum; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP210X_GET_PARTNUM ; 
 int /*<<< orphan*/  CP210X_PARTNUM_UNKNOWN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REQTYPE_DEVICE_TO_HOST ; 
 int FUNC0 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_serial*) ; 
 int FUNC2 (struct usb_serial*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct cp210x_serial_private* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_serial*,struct cp210x_serial_private*) ; 

__attribute__((used)) static int FUNC7(struct usb_serial *serial)
{
	int result;
	struct cp210x_serial_private *priv;

	priv = FUNC5(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	result = FUNC2(serial, REQTYPE_DEVICE_TO_HOST,
					  CP210X_GET_PARTNUM, &priv->partnum,
					  sizeof(priv->partnum));
	if (result < 0) {
		FUNC4(&serial->interface->dev,
			 "querying part number failed\n");
		priv->partnum = CP210X_PARTNUM_UNKNOWN;
	}

	FUNC6(serial, priv);

	FUNC1(serial);

	result = FUNC0(serial);
	if (result < 0) {
		FUNC3(&serial->interface->dev, "GPIO initialisation failed: %d\n",
				result);
	}

	return 0;
}