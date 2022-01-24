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
typedef  int u16 ;
struct us_data {int /*<<< orphan*/  srb; TYPE_3__* unusual_dev; TYPE_2__* pusb_dev; } ;
typedef  unsigned char bcdDevice ;
struct TYPE_6__ {int /*<<< orphan*/  productName; int /*<<< orphan*/  vendorName; } ;
struct TYPE_4__ {int /*<<< orphan*/  bcdDevice; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned int,int /*<<< orphan*/ ) ; 

void FUNC6(struct us_data *us, unsigned char *data,
		unsigned int data_len)
{
	if (data_len < 36) /* You lose. */
		return;

	FUNC2(data+8, ' ', 28);
	if (data[0]&0x20) { /*
			     * USB device currently not connected. Return
			     * peripheral qualifier 001b ("...however, the
			     * physical device is not currently connected
			     * to this logical unit") and leave vendor and
			     * product identification empty. ("If the target
			     * does store some of the INQUIRY data on the
			     * device, it may return zeros or ASCII spaces
			     * (20h) in those fields until the data is
			     * available from the device.").
			     */
	} else {
		u16 bcdDevice = FUNC0(us->pusb_dev->descriptor.bcdDevice);
		int n;

		n = FUNC4(us->unusual_dev->vendorName);
		FUNC1(data+8, us->unusual_dev->vendorName, FUNC3(8, n));
		n = FUNC4(us->unusual_dev->productName);
		FUNC1(data+16, us->unusual_dev->productName, FUNC3(16, n));

		data[32] = 0x30 + ((bcdDevice>>12) & 0x0F);
		data[33] = 0x30 + ((bcdDevice>>8) & 0x0F);
		data[34] = 0x30 + ((bcdDevice>>4) & 0x0F);
		data[35] = 0x30 + ((bcdDevice) & 0x0F);
	}

	FUNC5(data, data_len, us->srb);
}