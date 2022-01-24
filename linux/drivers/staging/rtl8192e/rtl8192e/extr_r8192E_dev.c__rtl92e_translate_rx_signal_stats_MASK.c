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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct rx_fwinfo {int dummy; } ;
struct rx_desc {int dummy; } ;
struct rtllib_rx_stats {int RxDrvInfoSize; int RxBufShift; int /*<<< orphan*/  bICV; int /*<<< orphan*/  bCRC; int /*<<< orphan*/  bHwError; } ;
struct rtllib_hdr_3addr {int /*<<< orphan*/ * addr3; int /*<<< orphan*/ * addr2; int /*<<< orphan*/ * addr1; int /*<<< orphan*/  frame_ctl; } ;
struct TYPE_8__ {int /*<<< orphan*/  numpacket_toself; int /*<<< orphan*/  numpacket_matchbssid; } ;
struct r8192_priv {TYPE_4__ stats; TYPE_3__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * bssid; } ;
struct TYPE_7__ {TYPE_2__* dev; TYPE_1__ current_network; } ;
struct TYPE_6__ {int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
 scalar_t__ RTLLIB_FCTL_FROMDS ; 
 scalar_t__ RTLLIB_FCTL_TODS ; 
 scalar_t__ RTLLIB_FTYPE_CTL ; 
 scalar_t__ RTLLIB_STYPE_BEACON ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct r8192_priv*,int /*<<< orphan*/ *,struct rtllib_rx_stats*,struct rtllib_rx_stats*) ; 
 int /*<<< orphan*/  FUNC3 (struct r8192_priv*,struct rtllib_rx_stats*,struct rx_desc*,struct rx_fwinfo*,struct rtllib_rx_stats*,int,int,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtllib_rx_stats*,struct rtllib_rx_stats*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev,
					      struct sk_buff *skb,
					      struct rtllib_rx_stats *pstats,
					      struct rx_desc *pdesc,
					      struct rx_fwinfo *pdrvinfo)
{
	struct r8192_priv *priv = (struct r8192_priv *)FUNC7(dev);
	bool bpacket_match_bssid, bpacket_toself;
	bool bPacketBeacon = false;
	struct rtllib_hdr_3addr *hdr;
	bool bToSelfBA = false;
	static struct rtllib_rx_stats  previous_stats;
	u16 fc, type;
	u8 *tmp_buf;
	u8 *praddr;

	tmp_buf = skb->data + pstats->RxDrvInfoSize + pstats->RxBufShift;

	hdr = (struct rtllib_hdr_3addr *)tmp_buf;
	fc = FUNC5(hdr->frame_ctl);
	type = FUNC1(fc);
	praddr = hdr->addr1;

	bpacket_match_bssid =
		((type != RTLLIB_FTYPE_CTL) &&
		 FUNC4(priv->rtllib->current_network.bssid,
				  (fc & RTLLIB_FCTL_TODS) ? hdr->addr1 :
				  (fc & RTLLIB_FCTL_FROMDS) ? hdr->addr2 :
				  hdr->addr3) &&
		 (!pstats->bHwError) && (!pstats->bCRC) && (!pstats->bICV));
	bpacket_toself = bpacket_match_bssid &&		/* check this */
			 FUNC4(praddr, priv->rtllib->dev->dev_addr);
	if (FUNC0(fc) == RTLLIB_STYPE_BEACON)
		bPacketBeacon = true;
	if (bpacket_match_bssid)
		priv->stats.numpacket_matchbssid++;
	if (bpacket_toself)
		priv->stats.numpacket_toself++;
	FUNC2(priv, tmp_buf, &previous_stats, pstats);
	FUNC3(priv, pstats, pdesc, pdrvinfo,
				  &previous_stats, bpacket_match_bssid,
				  bpacket_toself, bPacketBeacon, bToSelfBA);
	FUNC6(pstats, &previous_stats);
}