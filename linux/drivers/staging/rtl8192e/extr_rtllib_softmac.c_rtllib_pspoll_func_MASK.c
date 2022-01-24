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
struct sk_buff {int dummy; } ;
struct rtllib_pspoll_hdr {void* frame_ctl; void* aid; int /*<<< orphan*/  ta; int /*<<< orphan*/  bssid; } ;
struct TYPE_3__ {int /*<<< orphan*/  bssid; } ;
struct rtllib_device {int assoc_id; TYPE_2__* dev; TYPE_1__ current_network; int /*<<< orphan*/  tx_headroom; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int RTLLIB_FCTL_PM ; 
 int RTLLIB_FTYPE_CTL ; 
 int RTLLIB_STYPE_PSPOLL ; 
 void* FUNC0 (int) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtllib_pspoll_hdr* FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct rtllib_device *ieee)
{
	struct sk_buff *skb;
	struct rtllib_pspoll_hdr *hdr;

	skb = FUNC1(sizeof(struct rtllib_pspoll_hdr)+ieee->tx_headroom);
	if (!skb)
		return NULL;

	FUNC4(skb, ieee->tx_headroom);

	hdr = FUNC3(skb, sizeof(struct rtllib_pspoll_hdr));

	FUNC2(hdr->bssid, ieee->current_network.bssid);
	FUNC2(hdr->ta, ieee->dev->dev_addr);

	hdr->aid = FUNC0(ieee->assoc_id | 0xc000);
	hdr->frame_ctl = FUNC0(RTLLIB_FTYPE_CTL | RTLLIB_STYPE_PSPOLL |
			 RTLLIB_FCTL_PM);

	return skb;

}