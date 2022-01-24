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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int len; scalar_t__ data; scalar_t__ cb; } ;
struct scatterlist {int dummy; } ;
struct rtllib_hdr_4addr {int dummy; } ;
struct rtllib_ccmp_data {int key_idx; int /*<<< orphan*/ * tx_pn; int /*<<< orphan*/  tfm; int /*<<< orphan*/ * tx_aad; } ;
struct cb_desc {int /*<<< orphan*/  bHwSec; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 int AES_BLOCK_LEN ; 
 scalar_t__ CCMP_HDR_LEN ; 
 int CCMP_MIC_LEN ; 
 int CCMP_PN_LEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAX_DEV_ADDR_SIZE ; 
 struct aead_request* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*,struct scatterlist*,struct scatterlist*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct rtllib_hdr_4addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,scalar_t__,int) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC11 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int FUNC13 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb, int hdr_len, void *priv)
{
	struct rtllib_ccmp_data *key = priv;
	int i;
	u8 *pos;
	struct rtllib_hdr_4addr *hdr;
	struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb +
				    MAX_DEV_ADDR_SIZE);
	if (FUNC10(skb) < CCMP_HDR_LEN ||
	    FUNC13(skb) < CCMP_MIC_LEN ||
	    skb->len < hdr_len)
		return -1;

	pos = FUNC11(skb, CCMP_HDR_LEN);
	FUNC7(pos, pos + CCMP_HDR_LEN, hdr_len);
	pos += hdr_len;

	i = CCMP_PN_LEN - 1;
	while (i >= 0) {
		key->tx_pn[i]++;
		if (key->tx_pn[i] != 0)
			break;
		i--;
	}

	*pos++ = key->tx_pn[5];
	*pos++ = key->tx_pn[4];
	*pos++ = 0;
	*pos++ = (key->key_idx << 6) | (1 << 5) /* Ext IV included */;
	*pos++ = key->tx_pn[3];
	*pos++ = key->tx_pn[2];
	*pos++ = key->tx_pn[1];
	*pos++ = key->tx_pn[0];

	hdr = (struct rtllib_hdr_4addr *) skb->data;
	if (!tcb_desc->bHwSec) {
		struct aead_request *req;
		struct scatterlist sg[2];
		u8 *aad = key->tx_aad;
		u8 iv[AES_BLOCK_LEN];
		int aad_len, ret;
		int data_len = skb->len - hdr_len - CCMP_HDR_LEN;

		req = FUNC0(key->tfm, GFP_ATOMIC);
		if (!req)
			return -ENOMEM;

		aad_len = FUNC5(hdr, key->tx_pn, iv, aad);

		FUNC12(skb, CCMP_MIC_LEN);
		FUNC8(sg, 2);
		FUNC9(&sg[0], aad, aad_len);
		FUNC9(&sg[1], skb->data + hdr_len + CCMP_HDR_LEN,
			   data_len + CCMP_MIC_LEN);

		FUNC3(req, 0, NULL, NULL);
		FUNC2(req, aad_len);
		FUNC4(req, sg, sg, data_len, iv);

		ret = FUNC6(req);
		FUNC1(req);

		return ret;
	}

	return 0;
}