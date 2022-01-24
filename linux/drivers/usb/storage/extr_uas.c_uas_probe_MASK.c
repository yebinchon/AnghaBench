#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {TYPE_3__* altsetting; int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {TYPE_1__* bus; } ;
struct uas_dev_info {unsigned long flags; scalar_t__ qdepth; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; int /*<<< orphan*/  data_urbs; int /*<<< orphan*/  sense_urbs; int /*<<< orphan*/  cmd_urbs; scalar_t__ shutdown; scalar_t__ resetting; struct usb_device* udev; struct usb_interface* intf; } ;
struct Scsi_Host {int max_cmd_len; int max_id; int max_lun; scalar_t__ can_queue; scalar_t__ hostdata; int /*<<< orphan*/  sg_tablesize; scalar_t__ max_channel; } ;
struct TYPE_5__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;
struct TYPE_4__ {int /*<<< orphan*/  sg_tablesize; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int FUNC3 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct uas_dev_info*) ; 
 int /*<<< orphan*/  uas_do_work ; 
 int /*<<< orphan*/  FUNC9 (struct uas_dev_info*) ; 
 int /*<<< orphan*/  uas_host_template ; 
 scalar_t__ FUNC10 (struct usb_device*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_interface*,struct usb_device_id const*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_interface*,struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC14(struct usb_interface *intf, const struct usb_device_id *id)
{
	int result = -ENOMEM;
	struct Scsi_Host *shost = NULL;
	struct uas_dev_info *devinfo;
	struct usb_device *udev = FUNC2(intf);
	unsigned long dev_flags;

	if (!FUNC11(intf, id, &dev_flags))
		return -ENODEV;

	if (FUNC10(udev, intf))
		return -ENODEV;

	shost = FUNC4(&uas_host_template,
				sizeof(struct uas_dev_info));
	if (!shost)
		goto set_alt0;

	shost->max_cmd_len = 16 + 252;
	shost->max_id = 1;
	shost->max_lun = 256;
	shost->max_channel = 0;
	shost->sg_tablesize = udev->bus->sg_tablesize;

	devinfo = (struct uas_dev_info *)shost->hostdata;
	devinfo->intf = intf;
	devinfo->udev = udev;
	devinfo->resetting = 0;
	devinfo->shutdown = 0;
	devinfo->flags = dev_flags;
	FUNC1(&devinfo->cmd_urbs);
	FUNC1(&devinfo->sense_urbs);
	FUNC1(&devinfo->data_urbs);
	FUNC7(&devinfo->lock);
	FUNC0(&devinfo->work, uas_do_work);

	result = FUNC8(devinfo);
	if (result)
		goto set_alt0;

	/*
	 * 1 tag is reserved for untagged commands +
	 * 1 tag to avoid off by one errors in some bridge firmwares
	 */
	shost->can_queue = devinfo->qdepth - 2;

	FUNC13(intf, shost);
	result = FUNC3(shost, &intf->dev);
	if (result)
		goto free_streams;

	FUNC6(shost);
	return result;

free_streams:
	FUNC9(devinfo);
	FUNC13(intf, NULL);
set_alt0:
	FUNC12(udev, intf->altsetting[0].desc.bInterfaceNumber, 0);
	if (shost)
		FUNC5(shost);
	return result;
}