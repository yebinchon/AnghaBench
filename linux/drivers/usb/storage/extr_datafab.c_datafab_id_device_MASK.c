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
struct us_data {unsigned char* iobuf; } ;
struct datafab_info {int lun; int sectors; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int USB_STOR_XFER_GOOD ; 
 int FUNC0 (struct us_data*,unsigned char*,int) ; 
 int FUNC1 (struct us_data*,unsigned char*,int) ; 
 int FUNC2 (struct us_data*,struct datafab_info*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC6(struct us_data *us,
			     struct datafab_info *info)
{
	// this is a variation of the ATA "IDENTIFY DEVICE" command...according
	// to the ATA spec, 'Sector Count' isn't used but the Windows driver
	// sets this bit so we do too...
	//
	static unsigned char scommand[8] = { 0, 1, 0, 0, 0, 0xa0, 0xec, 1 };
	unsigned char *command = us->iobuf;
	unsigned char *reply;
	int rc;

	if (!info)
		return USB_STOR_TRANSPORT_ERROR;

	if (info->lun == -1) {
		rc = FUNC2(us, info);
		if (rc != USB_STOR_TRANSPORT_GOOD)
			return rc;
	}

	FUNC5(command, scommand, 8);
	reply = FUNC4(512, GFP_NOIO);
	if (!reply)
		return USB_STOR_TRANSPORT_ERROR;

	command[5] += (info->lun << 4);

	rc = FUNC1(us, command, 8);
	if (rc != USB_STOR_XFER_GOOD) {
		rc = USB_STOR_TRANSPORT_ERROR;
		goto leave;
	}

	// we'll go ahead and extract the media capacity while we're here...
	//
	rc = FUNC0(us, reply, 512);
	if (rc == USB_STOR_XFER_GOOD) {
		// capacity is at word offset 57-58
		//
		info->sectors = ((u32)(reply[117]) << 24) | 
				((u32)(reply[116]) << 16) |
				((u32)(reply[115]) <<  8) | 
				((u32)(reply[114])      );
		rc = USB_STOR_TRANSPORT_GOOD;
		goto leave;
	}

	rc = USB_STOR_TRANSPORT_ERROR;

 leave:
	FUNC3(reply);
	return rc;
}