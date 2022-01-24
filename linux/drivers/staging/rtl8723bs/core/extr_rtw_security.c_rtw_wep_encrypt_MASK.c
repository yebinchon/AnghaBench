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
typedef  int u8 ;
typedef  int u32 ;
struct xmit_priv {scalar_t__ frag_len; } ;
struct pkt_attrib {scalar_t__ encrypt; scalar_t__ nr_frags; int hdrlen; int iv_len; scalar_t__ last_txcmdsz; scalar_t__ icv_len; int /*<<< orphan*/  ra; } ;
struct xmit_frame {int* buf_addr; struct pkt_attrib attrib; } ;
struct security_priv {int* dot11DefKeylen; size_t dot11PrivacyKeyIndex; TYPE_1__* dot11DefKey; } ;
struct arc4context {int dummy; } ;
struct adapter {struct xmit_priv xmitpriv; struct security_priv securitypriv; } ;
typedef  scalar_t__ sint ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int* skey; } ;
typedef  int /*<<< orphan*/  SIZE_PTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int TXDESC_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct security_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ _WEP104_ ; 
 scalar_t__ _WEP40_ ; 
 int /*<<< orphan*/  FUNC2 (struct arc4context*,int*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct arc4context*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 

void FUNC6(struct adapter *padapter, u8 *pxmitframe)
{																	/*  exclude ICV */

	unsigned char crc[4];
	struct arc4context	 mycontext;

	sint	curfragnum, length;
	u32 keylength;

	u8 *pframe, *payload, *iv;    /* wepkey */
	u8 wepkey[16];
	u8   hw_hdr_offset = 0;
	struct	pkt_attrib	 *pattrib = &((struct xmit_frame *)pxmitframe)->attrib;
	struct	security_priv *psecuritypriv = &padapter->securitypriv;
	struct	xmit_priv 	*pxmitpriv = &padapter->xmitpriv;

	if (((struct xmit_frame *)pxmitframe)->buf_addr == NULL)
		return;

	hw_hdr_offset = TXDESC_OFFSET;
	pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + hw_hdr_offset;

	/* start to encrypt each fragment */
	if ((pattrib->encrypt == _WEP40_) || (pattrib->encrypt == _WEP104_)) {
		keylength = psecuritypriv->dot11DefKeylen[psecuritypriv->dot11PrivacyKeyIndex];

		for (curfragnum = 0; curfragnum < pattrib->nr_frags; curfragnum++) {
			iv = pframe+pattrib->hdrlen;
			FUNC5(&wepkey[0], iv, 3);
			FUNC5(&wepkey[3], &psecuritypriv->dot11DefKey[psecuritypriv->dot11PrivacyKeyIndex].skey[0], keylength);
			payload = pframe+pattrib->iv_len+pattrib->hdrlen;

			if ((curfragnum+1) == pattrib->nr_frags) {	/* the last fragment */

				length = pattrib->last_txcmdsz-pattrib->hdrlen-pattrib->iv_len-pattrib->icv_len;

				*((__le32 *)crc) = FUNC4(payload, length);

				FUNC3(&mycontext, wepkey, 3+keylength);
				FUNC2(&mycontext, payload, payload, length);
				FUNC2(&mycontext, payload+length, crc, 4);

			} else {
				length = pxmitpriv->frag_len-pattrib->hdrlen-pattrib->iv_len-pattrib->icv_len;
				*((__le32 *)crc) = FUNC4(payload, length);
				FUNC3(&mycontext, wepkey, 3+keylength);
				FUNC2(&mycontext, payload, payload, length);
				FUNC2(&mycontext, payload+length, crc, 4);

				pframe += pxmitpriv->frag_len;
				pframe = (u8 *)FUNC0((SIZE_PTR)(pframe));
			}
		}

		FUNC1(psecuritypriv, pattrib->ra);
	}
}