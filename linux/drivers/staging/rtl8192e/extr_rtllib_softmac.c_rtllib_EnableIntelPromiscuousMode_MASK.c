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
struct rtllib_device {int bNetPromiscuousMode; int /*<<< orphan*/  (* SetHwRegHandler ) (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* AllowAllDestAddrHandler ) (struct net_device*,int,int) ;} ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_CECHK_BSSID ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct rtllib_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct net_device *dev,
		bool bInitState)
{
	bool bFilterOutNonAssociatedBSSID = false;

	struct rtllib_device *ieee = FUNC1(dev);

	FUNC0(dev, "========>Enter Intel Promiscuous Mode\n");

	ieee->AllowAllDestAddrHandler(dev, true, !bInitState);
	ieee->SetHwRegHandler(dev, HW_VAR_CECHK_BSSID,
			     (u8 *)&bFilterOutNonAssociatedBSSID);

	ieee->bNetPromiscuousMode = true;
}