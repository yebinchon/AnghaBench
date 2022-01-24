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
struct usbat_info {int sense_key; int sense_asc; int sense_ascq; } ;
struct us_data {unsigned char* iobuf; } ;

/* Variables and functions */
 int UNIT_ATTENTION ; 
 int USBAT_FLASH_MEDIA_CHANGED ; 
 int USBAT_FLASH_MEDIA_NONE ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_FAILED ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int USB_STOR_XFER_GOOD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct us_data*) ; 
 int FUNC2 (struct us_data*) ; 
 int FUNC3 (struct us_data*,unsigned char*) ; 
 int FUNC4 (struct us_data*,unsigned char*) ; 
 int FUNC5 (struct us_data*,unsigned char*) ; 

__attribute__((used)) static int FUNC6(struct us_data *us,
				   struct usbat_info *info)
{
	int rc;
	unsigned char *uio = us->iobuf;

	rc = FUNC5(us, uio);
	if (rc != USB_STOR_XFER_GOOD)
		return USB_STOR_TRANSPORT_ERROR;

	/* Check for media existence */
	rc = FUNC4(us, uio);
	if (rc == USBAT_FLASH_MEDIA_NONE) {
		info->sense_key = 0x02;
		info->sense_asc = 0x3A;
		info->sense_ascq = 0x00;
		return USB_STOR_TRANSPORT_FAILED;
	}

	/* Check for media change */
	rc = FUNC3(us, uio);
	if (rc == USBAT_FLASH_MEDIA_CHANGED) {

		/* Reset and re-enable card detect */
		rc = FUNC2(us);
		if (rc != USB_STOR_TRANSPORT_GOOD)
			return rc;
		rc = FUNC1(us);
		if (rc != USB_STOR_TRANSPORT_GOOD)
			return rc;

		FUNC0(50);

		rc = FUNC5(us, uio);
		if (rc != USB_STOR_XFER_GOOD)
			return USB_STOR_TRANSPORT_ERROR;
		
		info->sense_key = UNIT_ATTENTION;
		info->sense_asc = 0x28;
		info->sense_ascq = 0x00;
		return USB_STOR_TRANSPORT_FAILED;
	}

	return USB_STOR_TRANSPORT_GOOD;
}