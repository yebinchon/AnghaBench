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
struct us_data {unsigned char* iobuf; } ;

/* Variables and functions */
 unsigned char FUNC0 (int) ; 
 unsigned char FUNC1 (int) ; 
 unsigned char USBAT_ATA ; 
 unsigned char USBAT_ATA_DATA ; 
 unsigned char USBAT_ATA_STATUS ; 
 unsigned char USBAT_CMD_COND_READ_BLOCK ; 
 unsigned char USBAT_QUAL_FCQ ; 
 int USB_STOR_TRANSPORT_FAILED ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int USB_STOR_XFER_GOOD ; 
 int FUNC2 (struct us_data*,void*,int,int) ; 
 int FUNC3 (struct us_data*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC4(struct us_data *us,
			     void* buffer,
			     int len,
			     int use_sg)
{
	int result;
	unsigned char *command = us->iobuf;

	command[0] = 0xC0;
	command[1] = USBAT_ATA | USBAT_CMD_COND_READ_BLOCK;
	command[2] = USBAT_ATA_DATA;
	command[3] = USBAT_ATA_STATUS;
	command[4] = 0xFD; /* Timeout (ms); */
	command[5] = USBAT_QUAL_FCQ;
	command[6] = FUNC0(len);
	command[7] = FUNC1(len);

	/* Multiple block read setup command */
	result = FUNC3(us, command, 8);
	if (result != USB_STOR_XFER_GOOD)
		return USB_STOR_TRANSPORT_FAILED;
	
	/* Read the blocks we just asked for */
	result = FUNC2(us, buffer, len, use_sg);
	if (result != USB_STOR_XFER_GOOD)
		return USB_STOR_TRANSPORT_FAILED;

	return USB_STOR_TRANSPORT_GOOD;
}