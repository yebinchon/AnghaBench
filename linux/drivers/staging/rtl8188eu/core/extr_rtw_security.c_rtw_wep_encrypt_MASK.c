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
struct xmit_priv {int frag_len; } ;
struct pkt_attrib {scalar_t__ encrypt; int nr_frags; int last_txcmdsz; int /*<<< orphan*/  hdrlen; } ;
struct xmit_frame {int* buf_addr; int pkt_offset; struct pkt_attrib attrib; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct security_priv {int dot11PrivacyKeyIndex; int /*<<< orphan*/ * dot11DefKeylen; TYPE_1__* dot11DefKey; } ;
struct lib80211_crypto_ops {scalar_t__ (* set_key ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ;int /*<<< orphan*/  (* deinit ) (void*) ;scalar_t__ (* encrypt_mpdu ) (struct sk_buff*,int /*<<< orphan*/ ,void*) ;void* (* init ) (int const) ;} ;
struct adapter {struct xmit_priv xmitpriv; struct security_priv securitypriv; } ;
struct TYPE_2__ {int /*<<< orphan*/  skey; } ;

/* Variables and functions */
 int PACKET_OFFSET_SZ ; 
 int TXDESC_SIZE ; 
 scalar_t__ _WEP104_ ; 
 scalar_t__ _WEP40_ ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct lib80211_crypto_ops* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 void* FUNC9 (int const) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 

void FUNC13(struct adapter *padapter, u8 *pxmitframe)
{
	int	curfragnum, length;
	u8 *pframe;
	u8 hw_hdr_offset = 0;
	struct	pkt_attrib	 *pattrib = &((struct xmit_frame *)pxmitframe)->attrib;
	struct	security_priv	*psecuritypriv = &padapter->securitypriv;
	struct	xmit_priv		*pxmitpriv = &padapter->xmitpriv;
	const int keyindex = psecuritypriv->dot11PrivacyKeyIndex;
	void *crypto_private;
	struct sk_buff *skb;
	struct lib80211_crypto_ops *crypto_ops;

	if (((struct xmit_frame *)pxmitframe)->buf_addr == NULL)
		return;

	if ((pattrib->encrypt != _WEP40_) && (pattrib->encrypt != _WEP104_))
		return;

	hw_hdr_offset = TXDESC_SIZE +
		 (((struct xmit_frame *)pxmitframe)->pkt_offset * PACKET_OFFSET_SZ);

	pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + hw_hdr_offset;

	crypto_ops = FUNC2("WEP");

	if (!crypto_ops)
		return;

	crypto_private = crypto_ops->init(keyindex);
	if (!crypto_private)
		return;

	if (crypto_ops->set_key(psecuritypriv->dot11DefKey[keyindex].skey,
				psecuritypriv->dot11DefKeylen[keyindex], NULL, crypto_private) < 0)
		goto free_crypto_private;

	for (curfragnum = 0; curfragnum < pattrib->nr_frags; curfragnum++) {
		if (curfragnum + 1 == pattrib->nr_frags)
			length = pattrib->last_txcmdsz;
		else
			length = pxmitpriv->frag_len;
		skb = FUNC0(length);
		if (!skb)
			goto free_crypto_private;

		FUNC7(skb, pframe, length);

		FUNC4(skb->data + 4, skb->data, pattrib->hdrlen);
		FUNC6(skb, 4);
		FUNC8(skb, skb->len - 4);

		if (crypto_ops->encrypt_mpdu(skb, pattrib->hdrlen, crypto_private)) {
			FUNC1(skb);
			goto free_crypto_private;
		}

		FUNC3(pframe, skb->data, skb->len);

		pframe += skb->len;
		pframe = (u8 *)FUNC5((size_t)(pframe), 4);

		FUNC1(skb);
	}

free_crypto_private:
	crypto_ops->deinit(crypto_private);
}