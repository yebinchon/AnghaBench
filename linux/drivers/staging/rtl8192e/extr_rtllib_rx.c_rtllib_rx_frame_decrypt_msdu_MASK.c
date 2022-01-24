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
struct sk_buff {scalar_t__ data; scalar_t__ cb; } ;
struct rtllib_hdr_4addr {int /*<<< orphan*/  addr2; int /*<<< orphan*/  frame_ctl; } ;
struct rtllib_device {int /*<<< orphan*/  dev; scalar_t__ need_sw_enc; scalar_t__ hwsec_active; } ;
struct lib80211_crypt_data {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  priv; TYPE_1__* ops; } ;
struct cb_desc {int bHwSec; } ;
struct TYPE_2__ {int (* decrypt_msdu ) (struct sk_buff*,int,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ MAX_DEV_ADDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC6(struct rtllib_device *ieee, struct sk_buff *skb,
			     int keyidx, struct lib80211_crypt_data *crypt)
{
	struct rtllib_hdr_4addr *hdr;
	int res, hdrlen;

	if (crypt == NULL || crypt->ops->decrypt_msdu == NULL)
		return 0;
	if (ieee->hwsec_active) {
		struct cb_desc *tcb_desc = (struct cb_desc *)
						(skb->cb + MAX_DEV_ADDR_SIZE);

		tcb_desc->bHwSec = 1;

		if (ieee->need_sw_enc)
			tcb_desc->bHwSec = 0;
	}

	hdr = (struct rtllib_hdr_4addr *) skb->data;
	hdrlen = FUNC4(FUNC2(hdr->frame_ctl));

	FUNC1(&crypt->refcnt);
	res = crypt->ops->decrypt_msdu(skb, keyidx, hdrlen, crypt->priv);
	FUNC0(&crypt->refcnt);
	if (res < 0) {
		FUNC3(ieee->dev,
			   "MSDU decryption/MIC verification failed (SA= %pM keyidx=%d)\n",
			   hdr->addr2, keyidx);
		return -1;
	}

	return 0;
}