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
struct dlfb_data {int /*<<< orphan*/  udev; } ;
typedef  int /*<<< orphan*/  set_def_chn ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NR_USB_REQUEST_CHANNEL ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int const*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dlfb_data *dlfb)
{
	int ret;
	void *buf;
	static const u8 set_def_chn[] = {
				0x57, 0xCD, 0xDC, 0xA7,
				0x1C, 0x88, 0x5E, 0x15,
				0x60, 0xFE, 0xC6, 0x97,
				0x16, 0x3D, 0x47, 0xF2  };

	buf = FUNC1(set_def_chn, sizeof(set_def_chn), GFP_KERNEL);

	if (!buf)
		return -ENOMEM;

	ret = FUNC2(dlfb->udev, FUNC3(dlfb->udev, 0),
			NR_USB_REQUEST_CHANNEL,
			(USB_DIR_OUT | USB_TYPE_VENDOR), 0, 0,
			buf, sizeof(set_def_chn), USB_CTRL_SET_TIMEOUT);

	FUNC0(buf);

	return ret;
}