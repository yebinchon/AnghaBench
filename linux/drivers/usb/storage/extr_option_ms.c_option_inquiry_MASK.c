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
struct us_data {int /*<<< orphan*/  recv_bulk_pipe; int /*<<< orphan*/  send_bulk_pipe; } ;
typedef  int /*<<< orphan*/  inquiry_msg ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_XFER_ERROR ; 
 int USB_STOR_XFER_GOOD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned char const*,int) ; 
 int FUNC4 (struct us_data*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct us_data*,char*,char*) ; 

__attribute__((used)) static int FUNC6(struct us_data *us)
{
	static const unsigned char inquiry_msg[] = {
	  0x55, 0x53, 0x42, 0x43, 0x12, 0x34, 0x56, 0x78,
	  0x24, 0x00, 0x00, 0x00, 0x80, 0x00, 0x06, 0x12,
	  0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00,
	  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	};
	char *buffer;
	int result;

	FUNC5(us, "Option MS: %s\n", "device inquiry for vendor name");

	buffer = FUNC1(0x24, GFP_KERNEL);
	if (buffer == NULL)
		return USB_STOR_TRANSPORT_ERROR;

	FUNC3(buffer, inquiry_msg, sizeof(inquiry_msg));
	result = FUNC4(us,
			us->send_bulk_pipe,
			buffer, sizeof(inquiry_msg), NULL);
	if (result != USB_STOR_XFER_GOOD) {
		result = USB_STOR_XFER_ERROR;
		goto out;
	}

	result = FUNC4(us,
			us->recv_bulk_pipe,
			buffer, 0x24, NULL);
	if (result != USB_STOR_XFER_GOOD) {
		result = USB_STOR_XFER_ERROR;
		goto out;
	}

	result = FUNC2(buffer+8, "Option", 6);

	if (result != 0)
		result = FUNC2(buffer+8, "ZCOPTION", 8);

	/* Read the CSW */
	FUNC4(us,
			us->recv_bulk_pipe,
			buffer, 13, NULL);

out:
	FUNC0(buffer);
	return result;
}