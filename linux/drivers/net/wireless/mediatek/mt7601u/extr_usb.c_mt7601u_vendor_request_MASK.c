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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int dummy; } ;
struct mt7601u_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MT7601U_STATE_REMOVED ; 
 int MT_VEND_REQ_MAX_RETRY ; 
 int /*<<< orphan*/  MT_VEND_REQ_TOUT_MS ; 
 int const USB_DIR_IN ; 
 int const USB_RECIP_DEVICE ; 
 int const USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int const,int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct usb_device* FUNC2 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7601u_dev*,unsigned int const,int const,int const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,void*,size_t const,int) ; 
 int FUNC5 (struct usb_device*,unsigned int const,int const,int const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,void*,size_t const,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC8(struct mt7601u_dev *dev, const u8 req,
			   const u8 direction, const u16 val, const u16 offset,
			   void *buf, const size_t buflen)
{
	int i, ret;
	struct usb_device *usb_dev = FUNC2(dev);
	const u8 req_type = direction | USB_TYPE_VENDOR | USB_RECIP_DEVICE;
	const unsigned int pipe = (direction == USB_DIR_IN) ?
		FUNC6(usb_dev, 0) : FUNC7(usb_dev, 0);

	for (i = 0; i < MT_VEND_REQ_MAX_RETRY; i++) {
		ret = FUNC5(usb_dev, pipe, req, req_type,
				      val, offset, buf, buflen,
				      MT_VEND_REQ_TOUT_MS);
		FUNC4(dev, pipe, req, req_type, val, offset,
				  buf, buflen, ret);

		if (ret == -ENODEV)
			FUNC3(MT7601U_STATE_REMOVED, &dev->state);
		if (ret >= 0 || ret == -ENODEV)
			return ret;

		FUNC1(5);
	}

	FUNC0(dev->dev, "Vendor request req:%02x off:%04x failed:%d\n",
		req, offset, ret);

	return ret;
}