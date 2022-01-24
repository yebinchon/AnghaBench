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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct xmit_priv {scalar_t__ frag_len; } ;
struct pkt_attrib {scalar_t__ encrypt; scalar_t__ nr_frags; int hdrlen; int iv_len; scalar_t__ last_txcmdsz; scalar_t__ icv_len; scalar_t__ priority; int /*<<< orphan*/ * ra; struct sta_info* psta; } ;
struct xmit_frame {int* buf_addr; struct pkt_attrib attrib; } ;
struct TYPE_6__ {int /*<<< orphan*/ * skey; } ;
struct sta_info {TYPE_3__ tkiptxmickey; } ;
struct security_priv {size_t XGrpKeyid; scalar_t__ sw_encrypt; TYPE_2__* XGrptxmickey; } ;
struct qos_priv {int qos_option; } ;
struct mic_data {int dummy; } ;
struct TYPE_4__ {struct qos_priv qospriv; } ;
struct _adapter {int /*<<< orphan*/  stapriv; struct xmit_priv xmitpriv; struct security_priv securitypriv; TYPE_1__ mlmepriv; } ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_5__ {int /*<<< orphan*/ * skey; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int TXDESC_OFFSET ; 
 scalar_t__ _TKIP_ ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 struct sta_info* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mic_data*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct mic_data*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct mic_data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct _adapter *padapter,
			    struct xmit_frame *pxmitframe)
{
	u32	curfragnum, length;
	u8	*pframe, *payload, mic[8];
	struct	mic_data micdata;
	struct	sta_info *stainfo;
	struct	qos_priv *pqospriv = &(padapter->mlmepriv.qospriv);
	struct	pkt_attrib  *pattrib = &pxmitframe->attrib;
	struct	security_priv *psecuritypriv = &padapter->securitypriv;
	struct	xmit_priv *pxmitpriv = &padapter->xmitpriv;
	u8 priority[4] = {0x0, 0x0, 0x0, 0x0};
	bool bmcst = FUNC1(pattrib->ra);

	if (pattrib->psta)
		stainfo = pattrib->psta;
	else
		stainfo = FUNC4(&padapter->stapriv,
					    &pattrib->ra[0]);
	if (pattrib->encrypt == _TKIP_) {
		/*encode mic code*/
		if (stainfo != NULL) {
			u8 null_key[16] = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
					   0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
					   0x0, 0x0};
			pframe = pxmitframe->buf_addr + TXDESC_OFFSET;
			if (bmcst) {
				if (!FUNC2(psecuritypriv->XGrptxmickey
				   [psecuritypriv->XGrpKeyid].skey,
				   null_key, 16))
					return -ENOMEM;
				/*start to calculate the mic code*/
				FUNC7(&micdata,
					 psecuritypriv->
					 XGrptxmickey[psecuritypriv->
					XGrpKeyid].skey);
			} else {
				if (!FUNC2(&stainfo->tkiptxmickey.skey[0],
					    null_key, 16))
					return -ENOMEM;
				/* start to calculate the mic code */
				FUNC7(&micdata,
					     &stainfo->tkiptxmickey.skey[0]);
			}
			if (pframe[1] & 1) {   /* ToDS==1 */
				FUNC6(&micdata,
						   &pframe[16], 6); /*DA*/
				if (pframe[1] & 2)  /* From Ds==1 */
					FUNC6(&micdata,
							   &pframe[24], 6);
				else
					FUNC6(&micdata,
							   &pframe[10], 6);
			} else {	/* ToDS==0 */
				FUNC6(&micdata,
						   &pframe[4], 6); /* DA */
				if (pframe[1] & 2)  /* From Ds==1 */
					FUNC6(&micdata,
							   &pframe[16], 6);
				else
					FUNC6(&micdata,
							   &pframe[10], 6);
			}
			if (pqospriv->qos_option == 1)
				priority[0] = (u8)pxmitframe->attrib.priority;
			FUNC6(&micdata, &priority[0], 4);
			payload = pframe;
			for (curfragnum = 0; curfragnum < pattrib->nr_frags;
			     curfragnum++) {
				payload = (u8 *)FUNC0((addr_t)(payload));
				payload += pattrib->hdrlen + pattrib->iv_len;
				if ((curfragnum + 1) == pattrib->nr_frags) {
					length = pattrib->last_txcmdsz -
						  pattrib->hdrlen -
						  pattrib->iv_len -
						  ((psecuritypriv->sw_encrypt)
						  ? pattrib->icv_len : 0);
					FUNC6(&micdata, payload,
							   length);
					payload = payload + length;
				} else {
					length = pxmitpriv->frag_len -
					    pattrib->hdrlen - pattrib->iv_len -
					    ((psecuritypriv->sw_encrypt) ?
					    pattrib->icv_len : 0);
					FUNC6(&micdata, payload,
							   length);
					payload = payload + length +
						  pattrib->icv_len;
				}
			}
			FUNC5(&micdata, &(mic[0]));
			/* add mic code  and add the mic code length in
			 * last_txcmdsz
			 */
			FUNC3(payload, &(mic[0]), 8);
			pattrib->last_txcmdsz += 8;
			payload = payload - pattrib->last_txcmdsz + 8;
		}
	}
	return 0;
}