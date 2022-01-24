#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct usb_gadget {int /*<<< orphan*/  dev; } ;
struct usb_composite_dev {struct usb_gadget* gadget; } ;
struct fsg_opts {int no_configfs; int /*<<< orphan*/  common; } ;
struct fsg_config {char* vendor_name; char* product_name; int /*<<< orphan*/  can_stall; } ;
struct TYPE_9__ {int iManufacturer; int iProduct; } ;
struct TYPE_8__ {int iConfiguration; } ;
struct TYPE_7__ {int id; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOKIA_LONG_NAME ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 size_t STRING_DESCRIPTION_IDX ; 
 size_t USB_GADGET_MANUFACTURER_IDX ; 
 size_t USB_GADGET_PRODUCT_IDX ; 
 int /*<<< orphan*/  coverwrite ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_6__ device_desc ; 
 int /*<<< orphan*/  f_acm_cfg1 ; 
 int /*<<< orphan*/  f_ecm_cfg1 ; 
 int /*<<< orphan*/  f_obex1_cfg1 ; 
 int /*<<< orphan*/  f_obex2_cfg1 ; 
 int /*<<< orphan*/  f_phonet_cfg1 ; 
 int /*<<< orphan*/  fi_acm ; 
 int /*<<< orphan*/  fi_ecm ; 
 int /*<<< orphan*/  fi_msg ; 
 int /*<<< orphan*/  fi_obex1 ; 
 int /*<<< orphan*/  fi_obex2 ; 
 int /*<<< orphan*/  fi_phonet ; 
 int FUNC4 (int /*<<< orphan*/ ,struct fsg_config*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct usb_composite_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct fsg_config*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsg_mod_data ; 
 int /*<<< orphan*/  fsg_num_buffers ; 
 struct fsg_opts* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_gadget*) ; 
 int /*<<< orphan*/  nokia_bind_config ; 
 TYPE_2__ nokia_config_100ma_driver ; 
 TYPE_2__ nokia_config_500ma_driver ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 TYPE_1__* strings_dev ; 
 int FUNC15 (struct usb_composite_dev*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_composite_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (struct usb_composite_dev*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC21(struct usb_composite_dev *cdev)
{
	struct usb_gadget	*gadget = cdev->gadget;
	struct fsg_opts		*fsg_opts;
	struct fsg_config	fsg_config;
	int			status;

	status = FUNC20(cdev, strings_dev);
	if (status < 0)
		goto err_usb;
	device_desc.iManufacturer = strings_dev[USB_GADGET_MANUFACTURER_IDX].id;
	device_desc.iProduct = strings_dev[USB_GADGET_PRODUCT_IDX].id;
	status = strings_dev[STRING_DESCRIPTION_IDX].id;
	nokia_config_500ma_driver.iConfiguration = status;
	nokia_config_100ma_driver.iConfiguration = status;

	if (!FUNC13(gadget)) {
		status = -ENODEV;
		goto err_usb;
	}

	fi_phonet = FUNC17("phonet");
	if (FUNC0(fi_phonet))
		FUNC14("could not find phonet function\n");

	fi_obex1 = FUNC17("obex");
	if (FUNC0(fi_obex1))
		FUNC14("could not find obex function 1\n");

	fi_obex2 = FUNC17("obex");
	if (FUNC0(fi_obex2))
		FUNC14("could not find obex function 2\n");

	fi_acm = FUNC17("acm");
	if (FUNC0(fi_acm)) {
		status = FUNC2(fi_acm);
		goto err_obex2_inst;
	}

	fi_ecm = FUNC17("ecm");
	if (FUNC0(fi_ecm)) {
		status = FUNC2(fi_ecm);
		goto err_acm_inst;
	}

	fi_msg = FUNC17("mass_storage");
	if (FUNC0(fi_msg)) {
		status = FUNC2(fi_msg);
		goto err_ecm_inst;
	}

	/* set up mass storage function */
	FUNC11(&fsg_config, &fsg_mod_data, fsg_num_buffers);
	fsg_config.vendor_name = "Nokia";
	fsg_config.product_name = "N900";

	fsg_opts = FUNC12(fi_msg);
	fsg_opts->no_configfs = true;

	status = FUNC9(fsg_opts->common, fsg_num_buffers);
	if (status)
		goto err_msg_inst;

	status = FUNC7(fsg_opts->common, cdev, fsg_config.can_stall);
	if (status)
		goto err_msg_buf;

	FUNC10(fsg_opts->common, true);

	status = FUNC4(fsg_opts->common, &fsg_config);
	if (status)
		goto err_msg_buf;

	FUNC8(fsg_opts->common, fsg_config.vendor_name,
				      fsg_config.product_name);

	/* finally register the configuration */
	status = FUNC15(cdev, &nokia_config_500ma_driver,
			nokia_bind_config);
	if (status < 0)
		goto err_msg_luns;

	status = FUNC15(cdev, &nokia_config_100ma_driver,
			nokia_bind_config);
	if (status < 0)
		goto err_put_cfg1;

	FUNC16(cdev, &coverwrite);
	FUNC3(&gadget->dev, "%s\n", NOKIA_LONG_NAME);

	return 0;

err_put_cfg1:
	FUNC18(f_acm_cfg1);
	if (!FUNC1(f_obex1_cfg1))
		FUNC18(f_obex1_cfg1);
	if (!FUNC1(f_obex2_cfg1))
		FUNC18(f_obex2_cfg1);
	if (!FUNC1(f_phonet_cfg1))
		FUNC18(f_phonet_cfg1);
	FUNC18(f_ecm_cfg1);
err_msg_luns:
	FUNC6(fsg_opts->common);
err_msg_buf:
	FUNC5(fsg_opts->common);
err_msg_inst:
	FUNC19(fi_msg);
err_ecm_inst:
	FUNC19(fi_ecm);
err_acm_inst:
	FUNC19(fi_acm);
err_obex2_inst:
	if (!FUNC0(fi_obex2))
		FUNC19(fi_obex2);
	if (!FUNC0(fi_obex1))
		FUNC19(fi_obex1);
	if (!FUNC0(fi_phonet))
		FUNC19(fi_phonet);
err_usb:
	return status;
}