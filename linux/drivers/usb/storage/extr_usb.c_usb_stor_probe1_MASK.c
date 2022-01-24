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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct us_unusual_dev {int dummy; } ;
struct us_data {int /*<<< orphan*/  scan_dwork; int /*<<< orphan*/  delay_wait; int /*<<< orphan*/  notify; int /*<<< orphan*/  cmnd_ready; int /*<<< orphan*/  dev_mutex; } ;
struct scsi_host_template {int dummy; } ;
struct Scsi_Host {int max_cmd_len; int /*<<< orphan*/  sg_tablesize; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct us_data*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (struct us_data*,struct usb_device_id const*,struct us_unusual_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct us_data*) ; 
 struct us_data* FUNC7 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct us_data*) ; 
 struct Scsi_Host* FUNC12 (struct scsi_host_template*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC14 (struct us_data*,char*) ; 
 int /*<<< orphan*/  usb_stor_scan_dwork ; 
 int /*<<< orphan*/  FUNC15 (struct usb_interface*) ; 

int FUNC16(struct us_data **pus,
		struct usb_interface *intf,
		const struct usb_device_id *id,
		struct us_unusual_dev *unusual_dev,
		struct scsi_host_template *sht)
{
	struct Scsi_Host *host;
	struct us_data *us;
	int result;

	FUNC2(&intf->dev, "USB Mass Storage device detected\n");

	/*
	 * Ask the SCSI layer to allocate a host structure, with extra
	 * space at the end for our private us_data structure.
	 */
	host = FUNC12(sht, sizeof(*us));
	if (!host) {
		FUNC3(&intf->dev, "Unable to allocate the scsi host\n");
		return -ENOMEM;
	}

	/*
	 * Allow 16-byte CDBs and thus > 2TB
	 */
	host->max_cmd_len = 16;
	host->sg_tablesize = FUNC15(intf);
	*pus = us = FUNC7(host);
	FUNC10(&(us->dev_mutex));
	FUNC13(&us->dev_mutex, intf);
	FUNC8(&us->cmnd_ready);
	FUNC8(&(us->notify));
	FUNC9(&us->delay_wait);
	FUNC0(&us->scan_dwork, usb_stor_scan_dwork);

	/* Associate the us_data structure with the USB device */
	result = FUNC1(us, intf);
	if (result)
		goto BadDevice;

	/* Get the unusual_devs entries and the descriptors */
	result = FUNC4(us, id, unusual_dev);
	if (result)
		goto BadDevice;

	/* Get standard transport and protocol settings */
	FUNC6(us);
	FUNC5(us);

	/*
	 * Give the caller a chance to fill in specialized transport
	 * or protocol settings.
	 */
	return 0;

BadDevice:
	FUNC14(us, "storage_probe() failed\n");
	FUNC11(us);
	return result;
}