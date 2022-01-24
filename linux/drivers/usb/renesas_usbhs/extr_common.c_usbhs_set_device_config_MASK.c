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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct usbhs_priv {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DEVADD0 ; 
 int EIO ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int USBSPD_SPEED_FULL ; 
 int USBSPD_SPEED_HIGH ; 
 int USBSPD_SPEED_LOW ; 
#define  USB_SPEED_FULL 130 
#define  USB_SPEED_HIGH 129 
#define  USB_SPEED_LOW 128 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct device* FUNC4 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_priv*,scalar_t__,int) ; 

int FUNC6(struct usbhs_priv *priv, int devnum,
			   u16 upphub, u16 hubport, u16 speed)
{
	struct device *dev = FUNC4(priv);
	u16 usbspd = 0;
	u32 reg = DEVADD0 + (2 * devnum);

	if (devnum > 10) {
		FUNC3(dev, "cannot set speed to unknown device %d\n", devnum);
		return -EIO;
	}

	if (upphub > 0xA) {
		FUNC3(dev, "unsupported hub number %d\n", upphub);
		return -EIO;
	}

	switch (speed) {
	case USB_SPEED_LOW:
		usbspd = USBSPD_SPEED_LOW;
		break;
	case USB_SPEED_FULL:
		usbspd = USBSPD_SPEED_FULL;
		break;
	case USB_SPEED_HIGH:
		usbspd = USBSPD_SPEED_HIGH;
		break;
	default:
		FUNC3(dev, "unsupported speed %d\n", speed);
		return -EIO;
	}

	FUNC5(priv, reg,	FUNC1(upphub)	|
				FUNC0(hubport)|
				FUNC2(usbspd));

	return 0;
}