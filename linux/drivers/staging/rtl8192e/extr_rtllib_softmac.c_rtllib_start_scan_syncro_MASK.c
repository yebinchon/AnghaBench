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
typedef  int /*<<< orphan*/  u8 ;
struct rtllib_device {int softmac_features; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* rtllib_start_hw_scan ) (int /*<<< orphan*/ ) ;scalar_t__ sync_scan_hurryup; } ;

/* Variables and functions */
 int IEEE_SOFTMAC_SCAN ; 
 scalar_t__ FUNC0 (struct rtllib_device*) ; 
 scalar_t__ FUNC1 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtllib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct rtllib_device *ieee, u8 is_mesh)
{
	if (FUNC1(ieee)) {
		if (FUNC0(ieee))
			FUNC2(ieee);
	}
	ieee->sync_scan_hurryup = 0;
	if (ieee->softmac_features & IEEE_SOFTMAC_SCAN) {
		FUNC3(ieee, is_mesh);
	} else {
		if (ieee->rtllib_start_hw_scan)
			ieee->rtllib_start_hw_scan(ieee->dev);
	}
}