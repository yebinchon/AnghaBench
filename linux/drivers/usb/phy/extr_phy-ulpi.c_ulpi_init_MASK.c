#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct usb_phy {int dummy; } ;
struct TYPE_3__ {scalar_t__ id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ ULPI_PRODUCT_ID_HIGH ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int FUNC3 (struct usb_phy*) ; 
 TYPE_1__* ulpi_ids ; 
 int FUNC4 (struct usb_phy*) ; 
 int FUNC5 (struct usb_phy*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct usb_phy *phy)
{
	int i, vid, pid, ret;
	u32 ulpi_id = 0;

	for (i = 0; i < 4; i++) {
		ret = FUNC5(phy, ULPI_PRODUCT_ID_HIGH - i);
		if (ret < 0)
			return ret;
		ulpi_id = (ulpi_id << 8) | ret;
	}
	vid = ulpi_id & 0xffff;
	pid = ulpi_id >> 16;

	FUNC2("ULPI transceiver vendor/product ID 0x%04x/0x%04x\n", vid, pid);

	for (i = 0; i < FUNC0(ulpi_ids); i++) {
		if (ulpi_ids[i].id == FUNC1(vid, pid)) {
			FUNC2("Found %s ULPI transceiver.\n",
				ulpi_ids[i].name);
			break;
		}
	}

	ret = FUNC3(phy);
	if (ret)
		return ret;

	return FUNC4(phy);
}