#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct rtllib_network {int /*<<< orphan*/  bssid; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr3; int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr1; scalar_t__ duration_id; void* frame_ctl; } ;
struct rtllib_disassoc {void* reason; TYPE_2__ header; } ;
struct rtllib_device {TYPE_1__* dev; int /*<<< orphan*/  tx_headroom; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTLLIB_STYPE_DISASSOC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtllib_disassoc* FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct sk_buff *
FUNC5(struct rtllib_network *beacon,
			struct rtllib_device *ieee, u16 asRsn)
{
	struct sk_buff *skb;
	struct rtllib_disassoc *disass;
	int len = sizeof(struct rtllib_disassoc) + ieee->tx_headroom;

	skb = FUNC1(len);

	if (!skb)
		return NULL;

	FUNC4(skb, ieee->tx_headroom);

	disass = FUNC3(skb, sizeof(struct rtllib_disassoc));
	disass->header.frame_ctl = FUNC0(RTLLIB_STYPE_DISASSOC);
	disass->header.duration_id = 0;

	FUNC2(disass->header.addr1, beacon->bssid);
	FUNC2(disass->header.addr2, ieee->dev->dev_addr);
	FUNC2(disass->header.addr3, beacon->bssid);

	disass->reason = FUNC0(asRsn);
	return skb;
}