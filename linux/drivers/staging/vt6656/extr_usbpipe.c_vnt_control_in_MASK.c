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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct vnt_private {int /*<<< orphan*/  usb_lock; int /*<<< orphan*/  usb; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_FLAGS_DISCONNECTED ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_CTL_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct vnt_private *priv, u8 request, u16 value,
		   u16 index, u16 length, u8 *buffer)
{
	int ret = 0;
	u8 *usb_buffer;

	if (FUNC5(DEVICE_FLAGS_DISCONNECTED, &priv->flags)) {
		ret = -EINVAL;
		goto end;
	}

	FUNC3(&priv->usb_lock);

	usb_buffer = FUNC1(length, GFP_KERNEL);
	if (!usb_buffer) {
		ret = -ENOMEM;
		goto end_unlock;
	}

	ret = FUNC6(priv->usb,
			      FUNC7(priv->usb, 0),
			      request, 0xc0, value,
			      index, usb_buffer, length, USB_CTL_WAIT);

	if (ret == length)
		FUNC2(buffer, usb_buffer, length);

	FUNC0(usb_buffer);

	if (ret >= 0 && ret < (int)length)
		ret = -EIO;

end_unlock:
	FUNC4(&priv->usb_lock);
end:
	return ret;
}