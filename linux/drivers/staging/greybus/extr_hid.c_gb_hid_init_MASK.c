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
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct hid_device {int vendor; int product; int /*<<< orphan*/  name; TYPE_2__ dev; int /*<<< orphan*/ * ll_driver; struct gb_hid* driver_data; int /*<<< orphan*/  country; void* version; } ;
struct TYPE_5__ {int /*<<< orphan*/  bCountryCode; int /*<<< orphan*/  wProductID; int /*<<< orphan*/  wVendorID; int /*<<< orphan*/  bcdHID; } ;
struct gb_hid {TYPE_4__* connection; TYPE_1__ hdesc; struct hid_device* hid; } ;
struct TYPE_8__ {TYPE_3__* bundle; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct gb_hid*) ; 
 int /*<<< orphan*/  gb_hid_ll_driver ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char*,int,int) ; 

__attribute__((used)) static int FUNC4(struct gb_hid *ghid)
{
	struct hid_device *hid = ghid->hid;
	int ret;

	ret = FUNC1(ghid);
	if (ret)
		return ret;

	hid->version = FUNC2(ghid->hdesc.bcdHID);
	hid->vendor = FUNC2(ghid->hdesc.wVendorID);
	hid->product = FUNC2(ghid->hdesc.wProductID);
	hid->country = ghid->hdesc.bCountryCode;

	hid->driver_data = ghid;
	hid->ll_driver = &gb_hid_ll_driver;
	hid->dev.parent = &ghid->connection->bundle->dev;
//	hid->bus = BUS_GREYBUS; /* Need a bustype for GREYBUS in <linux/input.h> */

	/* Set HID device's name */
	FUNC3(hid->name, sizeof(hid->name), "%s %04X:%04X",
		 FUNC0(&ghid->connection->bundle->dev),
		 hid->vendor, hid->product);

	return 0;
}