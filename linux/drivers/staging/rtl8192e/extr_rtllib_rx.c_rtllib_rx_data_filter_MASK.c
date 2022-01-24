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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct TYPE_5__ {scalar_t__* bssid; } ;
struct TYPE_4__ {scalar_t__ bPromiscuousOn; scalar_t__ bFilterSourceStationFrame; } ;
struct rtllib_device {scalar_t__ iw_mode; TYPE_2__ current_network; TYPE_3__* dev; TYPE_1__ IntelPromiscuousModeInfo; } ;
struct TYPE_6__ {scalar_t__* dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ IW_MODE_MESH ; 
 int RTLLIB_FCTL_DSTODS ; 
 int RTLLIB_FCTL_FROMDS ; 
 int RTLLIB_FCTL_TODS ; 
 scalar_t__ RTLLIB_STYPE_DATA ; 
 scalar_t__ RTLLIB_STYPE_DATA_CFACK ; 
 scalar_t__ RTLLIB_STYPE_DATA_CFACKPOLL ; 
 scalar_t__ RTLLIB_STYPE_DATA_CFPOLL ; 
 scalar_t__ RTLLIB_STYPE_NULLFUNC ; 
 scalar_t__ RTLLIB_STYPE_QOS_DATA ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__ FUNC5 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct rtllib_device *ieee, u16 fc,
				 u8 *dst, u8 *src, u8 *bssid, u8 *addr2)
{
	u8 type, stype;

	type = FUNC1(fc);
	stype = FUNC0(fc);

	/* Filter frames from different BSS */
	if (((fc & RTLLIB_FCTL_DSTODS) != RTLLIB_FCTL_DSTODS) &&
	    !FUNC2(ieee->current_network.bssid, bssid) &&
	    !FUNC4(ieee->current_network.bssid)) {
		return -1;
	}

	/* Filter packets sent by an STA that will be forwarded by AP */
	if (ieee->IntelPromiscuousModeInfo.bPromiscuousOn  &&
		ieee->IntelPromiscuousModeInfo.bFilterSourceStationFrame) {
		if ((fc & RTLLIB_FCTL_TODS) && !(fc & RTLLIB_FCTL_FROMDS) &&
		    !FUNC2(dst, ieee->current_network.bssid) &&
		    FUNC2(bssid, ieee->current_network.bssid)) {
			return -1;
		}
	}

	/* Nullfunc frames may have PS-bit set, so they must be passed to
	 * hostap_handle_sta_rx() before being dropped here.
	 */
	if (!ieee->IntelPromiscuousModeInfo.bPromiscuousOn) {
		if (stype != RTLLIB_STYPE_DATA &&
		    stype != RTLLIB_STYPE_DATA_CFACK &&
		    stype != RTLLIB_STYPE_DATA_CFPOLL &&
		    stype != RTLLIB_STYPE_DATA_CFACKPOLL &&
		    stype != RTLLIB_STYPE_QOS_DATA) {
			if (stype != RTLLIB_STYPE_NULLFUNC)
				FUNC6(ieee->dev,
					   "RX: dropped data frame with no data (type=0x%02x, subtype=0x%02x)\n",
					   type, stype);
			return -1;
		}
	}

	if (ieee->iw_mode != IW_MODE_MESH) {
		/* packets from our adapter are dropped (echo) */
		if (!FUNC5(src, ieee->dev->dev_addr, ETH_ALEN))
			return -1;

		/* {broad,multi}cast packets to our BSS go through */
		if (FUNC3(dst)) {
			if (FUNC5(bssid, ieee->current_network.bssid,
				   ETH_ALEN))
				return -1;
		}
	}
	return 0;
}