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
struct sk_buff {scalar_t__ data; } ;
struct rtllib_rx_stats {int dummy; } ;
struct rtllib_probe_response {int dummy; } ;
struct rtllib_hdr_4addr {int /*<<< orphan*/  frame_ctl; } ;
struct rtllib_device {int softmac_features; int /*<<< orphan*/  state; int /*<<< orphan*/  iw_mode; int /*<<< orphan*/  dev; int /*<<< orphan*/  ps_task; int /*<<< orphan*/  ps; int /*<<< orphan*/  sta_sleep; int /*<<< orphan*/  last_rx_ps_time; } ;

/* Variables and functions */
 int IEEE_SOFTMAC_PROBERS ; 
 int /*<<< orphan*/  IW_MODE_ADHOC ; 
 int /*<<< orphan*/  IW_MODE_INFRA ; 
 int /*<<< orphan*/  IW_MODE_MASTER ; 
 int /*<<< orphan*/  RTLLIB_LINKED ; 
 int /*<<< orphan*/  RTLLIB_PS_DISABLED ; 
#define  RTLLIB_STYPE_BEACON 130 
#define  RTLLIB_STYPE_PROBE_REQ 129 
#define  RTLLIB_STYPE_PROBE_RESP 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtllib_device*,struct rtllib_probe_response*,struct rtllib_rx_stats*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtllib_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rtllib_device *ieee,
			  struct sk_buff *skb,
			  struct rtllib_rx_stats *stats)
{
	struct rtllib_hdr_4addr *header = (struct rtllib_hdr_4addr *)skb->data;

	if ((FUNC0(FUNC1(header->frame_ctl)) !=
	    RTLLIB_STYPE_PROBE_RESP) &&
	    (FUNC0(FUNC1(header->frame_ctl)) !=
	    RTLLIB_STYPE_BEACON))
		ieee->last_rx_ps_time = jiffies;

	switch (FUNC0(FUNC1(header->frame_ctl))) {

	case RTLLIB_STYPE_BEACON:
		FUNC2(ieee->dev, "received BEACON (%d)\n",
			   FUNC0(FUNC1(header->frame_ctl)));
		FUNC3(
				ieee, (struct rtllib_probe_response *)header,
				stats);

		if (ieee->sta_sleep || (ieee->ps != RTLLIB_PS_DISABLED &&
		    ieee->iw_mode == IW_MODE_INFRA &&
		    ieee->state == RTLLIB_LINKED))
			FUNC5(&ieee->ps_task);

		break;

	case RTLLIB_STYPE_PROBE_RESP:
		FUNC2(ieee->dev, "received PROBE RESPONSE (%d)\n",
			   FUNC0(FUNC1(header->frame_ctl)));
		FUNC3(ieee,
			      (struct rtllib_probe_response *)header, stats);
		break;
	case RTLLIB_STYPE_PROBE_REQ:
		FUNC2(ieee->dev, "received PROBE RESQUEST (%d)\n",
			   FUNC0(FUNC1(header->frame_ctl)));
		if ((ieee->softmac_features & IEEE_SOFTMAC_PROBERS) &&
		    ((ieee->iw_mode == IW_MODE_ADHOC ||
		    ieee->iw_mode == IW_MODE_MASTER) &&
		    ieee->state == RTLLIB_LINKED))
			FUNC4(ieee, skb);
		break;
	}
}