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
struct rtllib_device {int softmac_features; int be_scan_inprogress; int /*<<< orphan*/  status; scalar_t__ actscanning; } ;

/* Variables and functions */
 int IEEE_SOFTMAC_SCAN ; 
 int /*<<< orphan*/  STATUS_SCANNING ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC1(struct rtllib_device *ieee, bool sync_scan)
{
	if (ieee->softmac_features & IEEE_SOFTMAC_SCAN) {
		if (sync_scan)
			return ieee->be_scan_inprogress;
		else
			return ieee->actscanning || ieee->be_scan_inprogress;
	} else {
		return FUNC0(STATUS_SCANNING, &ieee->status);
	}
}