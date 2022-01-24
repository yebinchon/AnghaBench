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
typedef  int u32 ;
struct usbat_info {int sectors; } ;
struct us_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 unsigned char USBAT_ATA_CMD ; 
 unsigned char USBAT_ATA_DEVICE ; 
 unsigned char USBAT_ATA_SECCNT ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int USB_STOR_XFER_GOOD ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct us_data*,char*) ; 
 int FUNC4 (struct us_data*,unsigned char*) ; 
 int FUNC5 (struct us_data*,unsigned char*,unsigned char*,int) ; 
 int FUNC6 (struct us_data*,unsigned char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct us_data *us,
					struct usbat_info *info)
{
	unsigned char registers[3] = {
		USBAT_ATA_SECCNT,
		USBAT_ATA_DEVICE,
		USBAT_ATA_CMD,
	};
	unsigned char  command[3] = { 0x01, 0xA0, 0xEC };
	unsigned char *reply;
	unsigned char status;
	int rc;

	if (!us || !info)
		return USB_STOR_TRANSPORT_ERROR;

	reply = FUNC1(512, GFP_NOIO);
	if (!reply)
		return USB_STOR_TRANSPORT_ERROR;

	/* ATA command : IDENTIFY DEVICE */
	rc = FUNC5(us, registers, command, 3);
	if (rc != USB_STOR_XFER_GOOD) {
		FUNC3(us, "Gah! identify_device failed\n");
		rc = USB_STOR_TRANSPORT_ERROR;
		goto leave;
	}

	/* Read device status */
	if (FUNC4(us, &status) != USB_STOR_XFER_GOOD) {
		rc = USB_STOR_TRANSPORT_ERROR;
		goto leave;
	}

	FUNC2(100);

	/* Read the device identification data */
	rc = FUNC6(us, reply, 512, 0);
	if (rc != USB_STOR_TRANSPORT_GOOD)
		goto leave;

	info->sectors = ((u32)(reply[117]) << 24) |
		((u32)(reply[116]) << 16) |
		((u32)(reply[115]) <<  8) |
		((u32)(reply[114])      );

	rc = USB_STOR_TRANSPORT_GOOD;

 leave:
	FUNC0(reply);
	return rc;
}