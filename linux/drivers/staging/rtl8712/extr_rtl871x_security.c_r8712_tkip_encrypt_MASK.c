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
union pn48 {int val; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct xmit_priv {scalar_t__ frag_len; } ;
struct pkt_attrib {scalar_t__ encrypt; scalar_t__ nr_frags; int hdrlen; int iv_len; scalar_t__ last_txcmdsz; scalar_t__ icv_len; int /*<<< orphan*/ * ta; int /*<<< orphan*/ * ra; struct sta_info* psta; } ;
struct xmit_frame {int /*<<< orphan*/ * buf_addr; struct pkt_attrib attrib; } ;
struct TYPE_2__ {int /*<<< orphan*/ * skey; } ;
struct sta_info {TYPE_1__ x_UncstKey; } ;
struct arc4context {int dummy; } ;
struct _adapter {int /*<<< orphan*/  stapriv; struct xmit_priv xmitpriv; } ;
typedef  int /*<<< orphan*/  addr_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,union pn48) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int TXDESC_OFFSET ; 
 scalar_t__ _FAIL ; 
 scalar_t__ _SUCCESS ; 
 scalar_t__ _TKIP_ ; 
 int /*<<< orphan*/  FUNC2 (struct arc4context*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct arc4context*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__) ; 
 struct sta_info* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

u32 FUNC9(struct _adapter *padapter, u8 *pxmitframe)
{	/*  exclude ICV */
	u16 pnl;
	u32 pnh;
	u8 rc4key[16];
	u8 ttkey[16];
	u8 crc[4];
	struct arc4context mycontext;
	u32 curfragnum, length;

	u8 *pframe, *payload, *iv, *prwskey;
	union pn48 txpn;
	struct sta_info *stainfo;
	struct pkt_attrib *pattrib = &((struct xmit_frame *)pxmitframe)->attrib;
	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
	u32 res = _SUCCESS;

	if (((struct xmit_frame *)pxmitframe)->buf_addr == NULL)
		return _FAIL;

	pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + TXDESC_OFFSET;
	/* 4 start to encrypt each fragment */
	if (pattrib->encrypt == _TKIP_) {
		if (pattrib->psta)
			stainfo = pattrib->psta;
		else
			stainfo = FUNC8(&padapter->stapriv,
				  &pattrib->ra[0]);
		if (stainfo != NULL) {
			prwskey = &stainfo->x_UncstKey.skey[0];
			for (curfragnum = 0; curfragnum < pattrib->nr_frags;
			     curfragnum++) {
				iv = pframe + pattrib->hdrlen;
				payload = pframe + pattrib->iv_len +
					  pattrib->hdrlen;
				FUNC0(iv, txpn);
				pnl = (u16)(txpn.val);
				pnh = (u32)(txpn.val >> 16);
				FUNC6((u16 *)&ttkey[0], prwskey,
				       &pattrib->ta[0], pnh);
				FUNC7(&rc4key[0], prwskey, (u16 *)&ttkey[0],
				       pnl);
				if ((curfragnum + 1) == pattrib->nr_frags) {
					/* 4 the last fragment */
					length = pattrib->last_txcmdsz -
					     pattrib->hdrlen -
					     pattrib->iv_len -
					     pattrib->icv_len;
					*((__le32 *)crc) = FUNC4(
						FUNC5(payload, length));
					FUNC3(&mycontext, rc4key, 16);
					FUNC2(&mycontext, payload,
							payload, length);
					FUNC2(&mycontext, payload +
							length, crc, 4);
				} else {
					length = pxmitpriv->frag_len -
						 pattrib->hdrlen -
						 pattrib->iv_len -
						 pattrib->icv_len;
					*((__le32 *)crc) = FUNC4(FUNC5(
							payload, length));
					FUNC3(&mycontext, rc4key, 16);
					FUNC2(&mycontext, payload,
							 payload, length);
					FUNC2(&mycontext,
							payload + length, crc,
							4);
					pframe += pxmitpriv->frag_len;
					pframe = (u8 *)FUNC1((addr_t)(pframe));
				}
			}
		} else {
			res = _FAIL;
		}
	}
	return res;
}