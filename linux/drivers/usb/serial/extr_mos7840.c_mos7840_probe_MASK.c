#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct usb_serial {TYPE_2__* dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  idProduct; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIO_REGISTER ; 
 int /*<<< orphan*/  MCS_RDREQ ; 
 int /*<<< orphan*/  MCS_RD_RTYPE ; 
 int MOSCHIP_DEVICE_ID_7810 ; 
 int MOSCHIP_DEVICE_ID_7820 ; 
 int MOSCHIP_DEVICE_ID_7840 ; 
 int MOSCHIP_DEVICE_ID_7843 ; 
 int /*<<< orphan*/  MOS_WDR_TIMEOUT ; 
 int /*<<< orphan*/  VENDOR_READ_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_serial*,void*) ; 

__attribute__((used)) static int FUNC7(struct usb_serial *serial,
				const struct usb_device_id *id)
{
	u16 product = FUNC2(serial->dev->descriptor.idProduct);
	u8 *buf;
	int device_type;

	if (product == MOSCHIP_DEVICE_ID_7810 ||
		product == MOSCHIP_DEVICE_ID_7820 ||
		product == MOSCHIP_DEVICE_ID_7843) {
		device_type = product;
		goto out;
	}

	buf = FUNC1(VENDOR_READ_LENGTH, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	FUNC4(serial->dev, FUNC5(serial->dev, 0),
			MCS_RDREQ, MCS_RD_RTYPE, 0, GPIO_REGISTER, buf,
			VENDOR_READ_LENGTH, MOS_WDR_TIMEOUT);

	/* For a MCS7840 device GPIO0 must be set to 1 */
	if (buf[0] & 0x01)
		device_type = MOSCHIP_DEVICE_ID_7840;
	else if (FUNC3(serial))
		device_type = MOSCHIP_DEVICE_ID_7810;
	else
		device_type = MOSCHIP_DEVICE_ID_7820;

	FUNC0(buf);
out:
	FUNC6(serial, (void *)(unsigned long)device_type);

	return 0;
}