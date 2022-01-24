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
typedef  int uint ;
typedef  unsigned char u8 ;
struct wlan_bssid_ex {unsigned char* IEs; int IELength; } ;
struct sta_priv {int tim_bitmap; } ;
struct mlme_ext_info {struct wlan_bssid_ex network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct sta_priv stapriv; } ;
typedef  int sint ;
typedef  unsigned char __le16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int _BEACON_IE_OFFSET_ ; 
 int _FIXED_IE_LENGTH_ ; 
 int /*<<< orphan*/  _SSID_IE_ ; 
 int /*<<< orphan*/  _SUPPORTEDRATES_IE_ ; 
 int /*<<< orphan*/  _TIM_IE_ ; 
 unsigned char FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 
 unsigned char* FUNC5 (unsigned char*,int /*<<< orphan*/ ,int*,int) ; 
 unsigned char* FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct adapter *padapter)
{
	struct sta_priv *pstapriv = &padapter->stapriv;
	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
	struct wlan_bssid_ex *pnetwork_mlmeext = &pmlmeinfo->network;
	unsigned char *pie = pnetwork_mlmeext->IEs;

	/* DBG_871X("%s\n", __func__); */

	/* update TIM IE */
	/* if (pstapriv->tim_bitmap) */
	if (true) {
		u8 *p, *dst_ie, *premainder_ie = NULL, *pbackup_remainder_ie = NULL;
		__le16 tim_bitmap_le;
		uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;

		tim_bitmap_le = FUNC1(pstapriv->tim_bitmap);

		p = FUNC5(
			pie + _FIXED_IE_LENGTH_,
			_TIM_IE_,
			&tim_ielen,
			pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_
		);
		if (p != NULL && tim_ielen > 0) {
			tim_ielen += 2;

			premainder_ie = p + tim_ielen;

			tim_ie_offset = (sint)(p - pie);

			remainder_ielen = pnetwork_mlmeext->IELength - tim_ie_offset - tim_ielen;

			/* append TIM IE from dst_ie offset */
			dst_ie = p;
		} else {
			tim_ielen = 0;

			/* calculate head_len */
			offset = _FIXED_IE_LENGTH_;

			/* get ssid_ie len */
			p = FUNC5(
				pie + _BEACON_IE_OFFSET_,
				_SSID_IE_,
				&tmp_len,
				(pnetwork_mlmeext->IELength - _BEACON_IE_OFFSET_)
			);
			if (p != NULL)
				offset += tmp_len + 2;

			/*  get supported rates len */
			p = FUNC5(
				pie + _BEACON_IE_OFFSET_,
				_SUPPORTEDRATES_IE_, &tmp_len,
				(pnetwork_mlmeext->IELength - _BEACON_IE_OFFSET_)
			);
			if (p !=  NULL)
				offset += tmp_len + 2;

			/* DS Parameter Set IE, len =3 */
			offset += 3;

			premainder_ie = pie + offset;

			remainder_ielen = pnetwork_mlmeext->IELength - offset - tim_ielen;

			/* append TIM IE from offset */
			dst_ie = pie + offset;
		}

		if (remainder_ielen > 0) {
			pbackup_remainder_ie = FUNC6(remainder_ielen);
			if (pbackup_remainder_ie && premainder_ie)
				FUNC4(pbackup_remainder_ie, premainder_ie, remainder_ielen);
		}

		*dst_ie++ = _TIM_IE_;

		if ((pstapriv->tim_bitmap & 0xff00) && (pstapriv->tim_bitmap & 0x00fe))
			tim_ielen = 5;
		else
			tim_ielen = 4;

		*dst_ie++ = tim_ielen;

		*dst_ie++ = 0;/* DTIM count */
		*dst_ie++ = 1;/* DTIM period */

		if (pstapriv->tim_bitmap & FUNC0(0))/* for bc/mc frames */
			*dst_ie++ = FUNC0(0);/* bitmap ctrl */
		else
			*dst_ie++ = 0;

		if (tim_ielen == 4) {
			__le16 pvb;

			if (pstapriv->tim_bitmap & 0xff00)
				pvb = FUNC1(pstapriv->tim_bitmap >> 8);
			else
				pvb = tim_bitmap_le;

			*dst_ie++ = FUNC3(pvb);

		} else if (tim_ielen == 5) {
			FUNC4(dst_ie, &tim_bitmap_le, 2);
			dst_ie += 2;
		}

		/* copy remainder IE */
		if (pbackup_remainder_ie) {
			FUNC4(dst_ie, pbackup_remainder_ie, remainder_ielen);

			FUNC2(pbackup_remainder_ie);
		}

		offset =  (uint)(dst_ie - pie);
		pnetwork_mlmeext->IELength = offset + remainder_ielen;
	}
}