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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ data; } ;
struct rtllib_rx_stats {int dummy; } ;
struct rtllib_hdr_3addr {int /*<<< orphan*/  frame_ctl; } ;
struct rtllib_device {int softmac_features; int /*<<< orphan*/  iw_mode; int /*<<< orphan*/  proto_started; } ;

/* Variables and functions */
 int IEEE_SOFTMAC_ASSOCIATE ; 
 int /*<<< orphan*/  IW_MODE_MASTER ; 
#define  RTLLIB_STYPE_ASSOC_REQ 135 
#define  RTLLIB_STYPE_ASSOC_RESP 134 
#define  RTLLIB_STYPE_AUTH 133 
#define  RTLLIB_STYPE_DEAUTH 132 
#define  RTLLIB_STYPE_DISASSOC 131 
#define  RTLLIB_STYPE_MANAGE_ACT 130 
#define  RTLLIB_STYPE_REASSOC_REQ 129 
#define  RTLLIB_STYPE_REASSOC_RESP 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtllib_device*,struct sk_buff*) ; 
 int FUNC3 (struct rtllib_device*,struct sk_buff*,struct rtllib_rx_stats*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtllib_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtllib_device*,struct sk_buff*,struct rtllib_rx_stats*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtllib_device*,struct sk_buff*) ; 

inline int FUNC7(struct rtllib_device *ieee,
				   struct sk_buff *skb,
				   struct rtllib_rx_stats *rx_stats, u16 type,
				   u16 stype)
{
	struct rtllib_hdr_3addr *header = (struct rtllib_hdr_3addr *) skb->data;
	u16 frame_ctl;

	if (!ieee->proto_started)
		return 0;

	frame_ctl = FUNC1(header->frame_ctl);
	switch (FUNC0(frame_ctl)) {
	case RTLLIB_STYPE_ASSOC_RESP:
	case RTLLIB_STYPE_REASSOC_RESP:
		if (FUNC3(ieee, skb, rx_stats) == 1)
			return 1;
		break;
	case RTLLIB_STYPE_ASSOC_REQ:
	case RTLLIB_STYPE_REASSOC_REQ:
		if ((ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) &&
		     ieee->iw_mode == IW_MODE_MASTER)
			FUNC4(ieee, skb);
		break;
	case RTLLIB_STYPE_AUTH:
		FUNC5(ieee, skb, rx_stats);
		break;
	case RTLLIB_STYPE_DISASSOC:
	case RTLLIB_STYPE_DEAUTH:
		FUNC6(ieee, skb);
		break;
	case RTLLIB_STYPE_MANAGE_ACT:
		FUNC2(ieee, skb);
		break;
	default:
		return -1;
	}
	return 0;
}