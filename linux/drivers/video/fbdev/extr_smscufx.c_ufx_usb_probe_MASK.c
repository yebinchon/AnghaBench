#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {int /*<<< orphan*/  dev; TYPE_1__ descriptor; int /*<<< orphan*/  serial; int /*<<< orphan*/  product; int /*<<< orphan*/  manufacturer; } ;
struct ufx_data {int /*<<< orphan*/  kref; int /*<<< orphan*/ * gdev; int /*<<< orphan*/  usb_active; int /*<<< orphan*/  free_framebuffer_work; int /*<<< orphan*/  pseudo_palette; struct fb_info* info; struct usb_device* udev; } ;
struct TYPE_7__ {int /*<<< orphan*/  modedb; } ;
struct TYPE_6__ {int smem_len; } ;
struct TYPE_8__ {int /*<<< orphan*/  yres; int /*<<< orphan*/  xres; } ;
struct fb_info {int /*<<< orphan*/  modelist; int /*<<< orphan*/  screen_base; TYPE_3__ monspecs; int /*<<< orphan*/  cmap; TYPE_2__ fix; TYPE_4__ var; int /*<<< orphan*/  node; int /*<<< orphan*/ * fbops; int /*<<< orphan*/  pseudo_palette; struct ufx_data* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_TRANSFER ; 
 int /*<<< orphan*/  WRITES_IN_FLIGHT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  console ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fb_defio ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct fb_info* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct fb_info*) ; 
 struct usb_device* FUNC14 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ufx_data* FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC21 (struct ufx_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct ufx_data*) ; 
 int FUNC23 (struct ufx_data*) ; 
 int /*<<< orphan*/  ufx_free ; 
 int /*<<< orphan*/  ufx_free_framebuffer_work ; 
 int FUNC24 (struct ufx_data*) ; 
 int FUNC25 (struct ufx_data*) ; 
 int /*<<< orphan*/  ufx_ops ; 
 int FUNC26 (TYPE_4__*,struct fb_info*) ; 
 int FUNC27 (struct fb_info*) ; 
 int FUNC28 (struct ufx_data*,int,int /*<<< orphan*/ *) ; 
 int FUNC29 (struct ufx_data*,int,int) ; 
 int FUNC30 (struct ufx_data*,struct fb_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct usb_interface*,struct ufx_data*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC33(struct usb_interface *interface,
			const struct usb_device_id *id)
{
	struct usb_device *usbdev;
	struct ufx_data *dev;
	struct fb_info *info;
	int retval;
	u32 id_rev, fpga_rev;

	/* usb initialization */
	usbdev = FUNC14(interface);
	FUNC0(!usbdev);

	dev = FUNC18(sizeof(*dev), GFP_KERNEL);
	if (dev == NULL) {
		FUNC6(&usbdev->dev, "ufx_usb_probe: failed alloc of dev struct\n");
		return -ENOMEM;
	}

	/* we need to wait for both usb and fbdev to spin down on disconnect */
	FUNC16(&dev->kref); /* matching kref_put in usb .disconnect fn */
	FUNC15(&dev->kref); /* matching kref_put in free_framebuffer_work */

	dev->udev = usbdev;
	dev->gdev = &usbdev->dev; /* our generic struct device * */
	FUNC31(interface, dev);

	FUNC5(dev->gdev, "%s %s - serial #%s\n",
		usbdev->manufacturer, usbdev->product, usbdev->serial);
	FUNC5(dev->gdev, "vid_%04x&pid_%04x&rev_%04x driver's ufx_data struct at %p\n",
		FUNC19(usbdev->descriptor.idVendor),
		FUNC19(usbdev->descriptor.idProduct),
		FUNC19(usbdev->descriptor.bcdDevice), dev);
	FUNC5(dev->gdev, "console enable=%d\n", console);
	FUNC5(dev->gdev, "fb_defio enable=%d\n", fb_defio);

	if (!FUNC21(dev, WRITES_IN_FLIGHT, MAX_TRANSFER)) {
		FUNC6(dev->gdev, "ufx_alloc_urb_list failed\n");
		goto e_nomem;
	}

	/* We don't register a new USB class. Our client interface is fbdev */

	/* allocates framebuffer driver structure, not framebuffer memory */
	info = FUNC12(0, &usbdev->dev);
	if (!info)
		goto e_nomem;

	dev->info = info;
	info->par = dev;
	info->pseudo_palette = dev->pseudo_palette;
	info->fbops = &ufx_ops;

	retval = FUNC8(&info->cmap, 256, 0);
	if (retval < 0) {
		FUNC6(dev->gdev, "fb_alloc_cmap failed %x\n", retval);
		goto destroy_modedb;
	}

	FUNC1(&dev->free_framebuffer_work,
			  ufx_free_framebuffer_work);

	FUNC2(&info->modelist);

	retval = FUNC28(dev, 0x3000, &id_rev);
	FUNC4(retval, "error %d reading 0x3000 register from device", retval);
	FUNC5(dev->gdev, "ID_REV register value 0x%08x", id_rev);

	retval = FUNC28(dev, 0x3004, &fpga_rev);
	FUNC4(retval, "error %d reading 0x3004 register from device", retval);
	FUNC5(dev->gdev, "FPGA_REV register value 0x%08x", fpga_rev);

	FUNC5(dev->gdev, "resetting device");
	retval = FUNC25(dev);
	FUNC4(retval, "error %d resetting device", retval);

	FUNC5(dev->gdev, "configuring system clock");
	retval = FUNC23(dev);
	FUNC4(retval, "error %d configuring system clock", retval);

	FUNC5(dev->gdev, "configuring DDR2 controller");
	retval = FUNC22(dev);
	FUNC4(retval, "error %d initialising DDR2 controller", retval);

	FUNC5(dev->gdev, "configuring I2C controller");
	retval = FUNC24(dev);
	FUNC4(retval, "error %d initialising I2C controller", retval);

	FUNC5(dev->gdev, "selecting display mode");
	retval = FUNC30(dev, info, NULL, 0);
	FUNC4(retval, "unable to find common mode for display and adapter");

	retval = FUNC29(dev, 0x4000, 0x00000001);
	FUNC4(retval, "error %d enabling graphics engine", retval);

	/* ready to begin using device */
	FUNC3(&dev->usb_active, 1);

	FUNC5(dev->gdev, "checking var");
	retval = FUNC26(&info->var, info);
	FUNC4(retval, "error %d ufx_ops_check_var", retval);

	FUNC5(dev->gdev, "setting par");
	retval = FUNC27(info);
	FUNC4(retval, "error %d ufx_ops_set_par", retval);

	FUNC5(dev->gdev, "registering framebuffer");
	retval = FUNC20(info);
	FUNC4(retval, "error %d register_framebuffer", retval);

	FUNC7(dev->gdev, "SMSC UDX USB device /dev/fb%d attached. %dx%d resolution."
		" Using %dK framebuffer memory\n", info->node,
		info->var.xres, info->var.yres, info->fix.smem_len >> 10);

	return 0;

error:
	FUNC9(&info->cmap);
destroy_modedb:
	FUNC10(info->monspecs.modedb);
	FUNC32(info->screen_base);
	FUNC11(&info->modelist);
	FUNC13(info);
put_ref:
	FUNC17(&dev->kref, ufx_free); /* ref for framebuffer */
	FUNC17(&dev->kref, ufx_free); /* last ref from kref_init */
	return retval;

e_nomem:
	retval = -ENOMEM;
	goto put_ref;
}