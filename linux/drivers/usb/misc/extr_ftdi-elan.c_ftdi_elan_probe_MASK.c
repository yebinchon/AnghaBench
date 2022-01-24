#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  minor; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_3__ {int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct usb_ftdi {int expected; int bulk_in_endpointAddr; int bulk_out_endpointAddr; TYPE_2__* udev; int /*<<< orphan*/  respond_work; int /*<<< orphan*/  command_work; int /*<<< orphan*/  status_work; int /*<<< orphan*/ * class; int /*<<< orphan*/  bulk_in_buffer; int /*<<< orphan*/  bulk_in_size; int /*<<< orphan*/  u132_lock; struct usb_interface* interface; int /*<<< orphan*/  sw_lock; scalar_t__ sequence_num; int /*<<< orphan*/  ftdi_list; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  ftdi_elan_command_work ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ftdi*) ; 
 int /*<<< orphan*/  ftdi_elan_jtag_class ; 
 int /*<<< orphan*/  FUNC4 (struct usb_ftdi*) ; 
 int /*<<< orphan*/  ftdi_elan_respond_work ; 
 int /*<<< orphan*/  ftdi_elan_status_work ; 
 scalar_t__ ftdi_instances ; 
 int /*<<< orphan*/  ftdi_module_lock ; 
 int /*<<< orphan*/  ftdi_static_list ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ftdi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_ftdi* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_endpoint_descriptor*) ; 
 int FUNC16 (struct usb_host_interface*,struct usb_endpoint_descriptor**,struct usb_endpoint_descriptor**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_interface*,struct usb_ftdi*) ; 

__attribute__((used)) static int FUNC20(struct usb_interface *interface,
			   const struct usb_device_id *id)
{
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *bulk_in, *bulk_out;
	int retval;
	struct usb_ftdi *ftdi;

	ftdi = FUNC8(sizeof(struct usb_ftdi), GFP_KERNEL);
	if (!ftdi)
		return -ENOMEM;

	FUNC12(&ftdi_module_lock);
	FUNC9(&ftdi->ftdi_list, &ftdi_static_list);
	ftdi->sequence_num = ++ftdi_instances;
	FUNC13(&ftdi_module_lock);
	FUNC3(ftdi);
	FUNC14(&ftdi->sw_lock, 1);
	ftdi->udev = FUNC17(FUNC6(interface));
	ftdi->interface = interface;
	FUNC11(&ftdi->u132_lock);
	ftdi->expected = 4;

	iface_desc = interface->cur_altsetting;
	retval = FUNC16(iface_desc,
			&bulk_in, &bulk_out, NULL, NULL);
	if (retval) {
		FUNC1(&ftdi->udev->dev, "Could not find both bulk-in and bulk-out endpoints\n");
		goto error;
	}

	ftdi->bulk_in_size = FUNC15(bulk_in);
	ftdi->bulk_in_endpointAddr = bulk_in->bEndpointAddress;
	ftdi->bulk_in_buffer = FUNC7(ftdi->bulk_in_size, GFP_KERNEL);
	if (!ftdi->bulk_in_buffer) {
		retval = -ENOMEM;
		goto error;
	}

	ftdi->bulk_out_endpointAddr = bulk_out->bEndpointAddress;

	FUNC2(&ftdi->udev->dev, "interface %d has I=%02X O=%02X\n",
		 iface_desc->desc.bInterfaceNumber, ftdi->bulk_in_endpointAddr,
		 ftdi->bulk_out_endpointAddr);
	FUNC19(interface, ftdi);
	if (iface_desc->desc.bInterfaceNumber == 0 &&
	    ftdi->bulk_in_endpointAddr == 0x81 &&
	    ftdi->bulk_out_endpointAddr == 0x02) {
		retval = FUNC18(interface, &ftdi_elan_jtag_class);
		if (retval) {
			FUNC1(&ftdi->udev->dev, "Not able to get a minor for this device\n");
			FUNC19(interface, NULL);
			retval = -ENOMEM;
			goto error;
		} else {
			ftdi->class = &ftdi_elan_jtag_class;
			FUNC2(&ftdi->udev->dev, "USB FDTI=%p JTAG interface %d now attached to ftdi%d\n",
				 ftdi, iface_desc->desc.bInterfaceNumber,
				 interface->minor);
			return 0;
		}
	} else if (iface_desc->desc.bInterfaceNumber == 1 &&
		   ftdi->bulk_in_endpointAddr == 0x83 &&
		   ftdi->bulk_out_endpointAddr == 0x04) {
		ftdi->class = NULL;
		FUNC2(&ftdi->udev->dev, "USB FDTI=%p ELAN interface %d now activated\n",
			 ftdi, iface_desc->desc.bInterfaceNumber);
		FUNC0(&ftdi->status_work, ftdi_elan_status_work);
		FUNC0(&ftdi->command_work, ftdi_elan_command_work);
		FUNC0(&ftdi->respond_work, ftdi_elan_respond_work);
		FUNC5(ftdi, FUNC10(3 *1000));
		return 0;
	} else {
		FUNC1(&ftdi->udev->dev,
			"Could not find ELAN's U132 device\n");
		retval = -ENODEV;
		goto error;
	}
error:if (ftdi) {
		FUNC4(ftdi);
	}
	return retval;
}