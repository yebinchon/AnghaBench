#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned short u16 ;
struct TYPE_2__ {int* txseq_tid; } ;
struct sta_info {TYPE_1__ sta_xmitpriv; } ;
struct qos_priv {scalar_t__ qos_option; } ;
struct pkt_attrib {int subtype; int hdrlen; size_t priority; int seqnum; int /*<<< orphan*/  ra; struct sta_info* psta; int /*<<< orphan*/  ack_policy; scalar_t__ encrypt; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct mlme_priv {struct qos_priv qospriv; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr3; int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr1; int /*<<< orphan*/  frame_ctl; } ;
struct _adapter {int /*<<< orphan*/  stapriv; struct mlme_priv mlmepriv; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned short*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  WIFI_ADHOC_STATE ; 
 int /*<<< orphan*/  WIFI_AP_STATE ; 
 int WIFI_DATA_TYPE ; 
 int /*<<< orphan*/  WIFI_MP_STATE ; 
 int /*<<< orphan*/  WIFI_STATION_STATE ; 
 int /*<<< orphan*/  WLANHDR_OFFSET ; 
 scalar_t__ FUNC7 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlme_priv*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC12 (struct _adapter*) ; 
 struct sta_info* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct _adapter *padapter, u8 *hdr,
			struct pkt_attrib *pattrib)
{
	u16 *qc;

	struct ieee80211_hdr *pwlanhdr = (struct ieee80211_hdr *)hdr;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct qos_priv *pqospriv = &pmlmepriv->qospriv;
	__le16 *fctrl = &pwlanhdr->frame_ctl;

	FUNC11(hdr, 0, WLANHDR_OFFSET);
	FUNC2(fctrl, pattrib->subtype);
	if (pattrib->subtype & WIFI_DATA_TYPE) {
		if (FUNC7(pmlmepriv,  WIFI_STATION_STATE)) {
			/* to_ds = 1, fr_ds = 0; */
			FUNC6(fctrl);
			FUNC10(pwlanhdr->addr1, FUNC8(pmlmepriv),
				ETH_ALEN);
			FUNC10(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
			FUNC10(pwlanhdr->addr3, pattrib->dst, ETH_ALEN);
		} else if (FUNC7(pmlmepriv, WIFI_AP_STATE)) {
			/* to_ds = 0, fr_ds = 1; */
			FUNC1(fctrl);
			FUNC10(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
			FUNC10(pwlanhdr->addr2, FUNC8(pmlmepriv),
				ETH_ALEN);
			FUNC10(pwlanhdr->addr3, pattrib->src, ETH_ALEN);
		} else if (FUNC7(pmlmepriv, WIFI_ADHOC_STATE) ||
			   FUNC7(pmlmepriv,
					 WIFI_ADHOC_MASTER_STATE)) {
			FUNC10(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
			FUNC10(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
			FUNC10(pwlanhdr->addr3, FUNC8(pmlmepriv),
				ETH_ALEN);
		} else if (FUNC7(pmlmepriv, WIFI_MP_STATE)) {
			FUNC10(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
			FUNC10(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
			FUNC10(pwlanhdr->addr3, FUNC8(pmlmepriv),
				ETH_ALEN);
		} else {
			return -EINVAL;
		}

		if (pattrib->encrypt)
			FUNC4(fctrl);
		if (pqospriv->qos_option) {
			qc = (unsigned short *)(hdr + pattrib->hdrlen - 2);
			if (pattrib->priority)
				FUNC3(qc, pattrib->priority);
			FUNC0(qc, pattrib->ack_policy);
		}
		/* TODO: fill HT Control Field */
		/* Update Seq Num will be handled by f/w */
		{
			struct sta_info *psta;
			bool bmcst = FUNC9(pattrib->ra);

			if (pattrib->psta) {
				psta = pattrib->psta;
			} else {
				if (bmcst)
					psta = FUNC12(padapter);
				else
					psta =
					 FUNC13(&padapter->stapriv,
					 pattrib->ra);
			}
			if (psta) {
				psta->sta_xmitpriv.txseq_tid
						  [pattrib->priority]++;
				psta->sta_xmitpriv.txseq_tid[pattrib->priority]
						   &= 0xFFF;
				pattrib->seqnum = psta->sta_xmitpriv.
						  txseq_tid[pattrib->priority];
				FUNC5(hdr, pattrib->seqnum);
			}
		}
	}
	return 0;
}