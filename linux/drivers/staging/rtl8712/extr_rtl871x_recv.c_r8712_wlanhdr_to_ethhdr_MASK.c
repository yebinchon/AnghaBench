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
struct rx_pkt_attrib {int hdrlen; int iv_len; int /*<<< orphan*/ * src; int /*<<< orphan*/ * dst; int /*<<< orphan*/  icv_len; scalar_t__ encrypt; } ;
struct TYPE_3__ {scalar_t__ len; struct rx_pkt_attrib attrib; struct _adapter* adapter; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct mlme_priv {int dummy; } ;
typedef  int ieee80211_snap_hdr ;
struct ethhdr {int dummy; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;
typedef  int sint ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENOMEM ; 
 int ETH_ALEN ; 
 scalar_t__ SNAP_ETH_TYPE_APPLETALK_AARP ; 
 scalar_t__ SNAP_ETH_TYPE_IPX ; 
 int SNAP_SIZE ; 
 int /*<<< orphan*/  WIFI_MP_STATE ; 
 scalar_t__ bridge_tunnel_header ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int* FUNC1 (union recv_frame*) ; 
 int /*<<< orphan*/ * FUNC2 (union recv_frame*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *,int) ; 
 int* FUNC6 (union recv_frame*,int) ; 
 int /*<<< orphan*/  FUNC7 (union recv_frame*,int /*<<< orphan*/ ) ; 
 scalar_t__ rfc1042_header ; 

int FUNC8(union recv_frame *precvframe)
{
	/*remove the wlanhdr and add the eth_hdr*/
	sint	rmv_len;
	u16	len;
	u8	bsnaphdr;
	u8	*psnap_type;
	struct ieee80211_snap_hdr *psnap;
	struct _adapter	*adapter = precvframe->u.hdr.adapter;
	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;

	u8 *ptr = FUNC1(precvframe); /*point to frame_ctrl field*/
	struct rx_pkt_attrib *pattrib = &precvframe->u.hdr.attrib;

	if (pattrib->encrypt)
		FUNC7(precvframe, pattrib->icv_len);
	psnap = (struct ieee80211_snap_hdr *)(ptr + pattrib->hdrlen +
		 pattrib->iv_len);
	psnap_type = ptr + pattrib->hdrlen + pattrib->iv_len + SNAP_SIZE;
	/* convert hdr + possible LLC headers into Ethernet header */
	if ((!FUNC4(psnap, (void *)rfc1042_header, SNAP_SIZE) &&
	    (FUNC4(psnap_type, (void *)SNAP_ETH_TYPE_IPX, 2)) &&
	    (FUNC4(psnap_type, (void *)SNAP_ETH_TYPE_APPLETALK_AARP, 2))) ||
	     !FUNC4(psnap, (void *)bridge_tunnel_header, SNAP_SIZE)) {
		/* remove RFC1042 or Bridge-Tunnel encapsulation and
		 * replace EtherType
		 */
		bsnaphdr = true;
	} else {
		/* Leave Ethernet header part of hdr and full payload */
		bsnaphdr = false;
	}
	rmv_len = pattrib->hdrlen + pattrib->iv_len +
		  (bsnaphdr ? SNAP_SIZE : 0);
	len = precvframe->u.hdr.len - rmv_len;
	if (FUNC0(pmlmepriv, WIFI_MP_STATE)) {
		ptr += rmv_len;
		*ptr = 0x87;
		*(ptr + 1) = 0x12;
		/* append rx status for mp test packets */
		ptr = FUNC6(precvframe, (rmv_len -
		      sizeof(struct ethhdr) + 2) - 24);
		if (!ptr)
			return -ENOMEM;
		FUNC5(ptr, FUNC2(precvframe), 24);
		ptr += 24;
	} else {
		ptr = FUNC6(precvframe, (rmv_len -
		      sizeof(struct ethhdr) + (bsnaphdr ? 2 : 0)));
		if (!ptr)
			return -ENOMEM;
	}

	FUNC5(ptr, pattrib->dst, ETH_ALEN);
	FUNC5(ptr + ETH_ALEN, pattrib->src, ETH_ALEN);
	if (!bsnaphdr) {
		__be16 be_tmp = FUNC3(len);

		FUNC5(ptr + 12, &be_tmp, 2);
	}
	return 0;
}