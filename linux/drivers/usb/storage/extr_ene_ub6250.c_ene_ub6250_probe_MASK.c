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
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct us_data {char* transport_name; scalar_t__ max_lun; int /*<<< orphan*/  transport; scalar_t__ extra; int /*<<< orphan*/  extra_destructor; } ;
struct ene_ub6250_info {int* bbuf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REG_CARD_STATUS ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_XFER_GOOD ; 
 int FUNC0 (struct us_data*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  ene_transport ; 
 int /*<<< orphan*/  ene_ub6250_host_template ; 
 int /*<<< orphan*/  ene_ub6250_info_destructor ; 
 int ene_ub6250_unusual_dev_list ; 
 struct usb_device_id const* ene_ub6250_usb_ids ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*) ; 
 int FUNC6 (struct us_data**,struct usb_interface*,struct usb_device_id const*,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct us_data*) ; 

__attribute__((used)) static int FUNC8(struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	int result;
	u8  misc_reg03;
	struct us_data *us;
	struct ene_ub6250_info *info;

	result = FUNC6(&us, intf, id,
		   (id - ene_ub6250_usb_ids) + ene_ub6250_unusual_dev_list,
		   &ene_ub6250_host_template);
	if (result)
		return result;

	/* FIXME: where should the code alloc extra buf ? */
	us->extra = FUNC3(sizeof(struct ene_ub6250_info), GFP_KERNEL);
	if (!us->extra)
		return -ENOMEM;
	us->extra_destructor = ene_ub6250_info_destructor;

	info = (struct ene_ub6250_info *)(us->extra);
	info->bbuf = FUNC2(512, GFP_KERNEL);
	if (!info->bbuf) {
		FUNC1(us->extra);
		return -ENOMEM;
	}

	us->transport_name = "ene_ub6250";
	us->transport = ene_transport;
	us->max_lun = 0;

	result = FUNC7(us);
	if (result)
		return result;

	/* probe card type */
	result = FUNC0(us, REG_CARD_STATUS, info->bbuf);
	if (result != USB_STOR_XFER_GOOD) {
		FUNC5(intf);
		return USB_STOR_TRANSPORT_ERROR;
	}

	misc_reg03 = info->bbuf[0];
	if (!(misc_reg03 & 0x01)) {
		FUNC4("ums_eneub6250: This driver only supports SD/MS cards. "
			"It does not support SM cards.\n");
	}

	return result;
}