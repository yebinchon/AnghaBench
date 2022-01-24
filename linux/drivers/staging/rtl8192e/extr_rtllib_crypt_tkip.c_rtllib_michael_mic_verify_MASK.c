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
struct sk_buff {int* data; int len; scalar_t__ dev; } ;
struct rtllib_tkip_data {int* rx_hdr; int /*<<< orphan*/  rx_iv16_new; int /*<<< orphan*/  rx_iv16; int /*<<< orphan*/  rx_iv32_new; int /*<<< orphan*/  rx_iv32; int /*<<< orphan*/  dot11RSNAStatsTKIPLocalMICFailures; int /*<<< orphan*/ * key; int /*<<< orphan*/  rx_tfm_michael; int /*<<< orphan*/  key_set; } ;
struct rtllib_hdr_4addr {int /*<<< orphan*/  addr2; int /*<<< orphan*/  frame_ctl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct rtllib_hdr_4addr*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, int keyidx,
				     int hdr_len, void *priv)
{
	struct rtllib_tkip_data *tkey = priv;
	u8 mic[8];
	struct rtllib_hdr_4addr *hdr;

	hdr = (struct rtllib_hdr_4addr *) skb->data;

	if (!tkey->key_set)
		return -1;

	FUNC4(skb, tkey->rx_hdr);
	if (FUNC0(FUNC1(hdr->frame_ctl)))
		tkey->rx_hdr[12] = *(skb->data + hdr_len - 2) & 0x07;

	if (FUNC3(tkey->rx_tfm_michael, &tkey->key[24], tkey->rx_hdr,
			skb->data + hdr_len, skb->len - 8 - hdr_len, mic))
		return -1;

	if (FUNC2(mic, skb->data + skb->len - 8, 8) != 0) {
		struct rtllib_hdr_4addr *hdr;

		hdr = (struct rtllib_hdr_4addr *) skb->data;
		FUNC5(skb->dev,
			   "Michael MIC verification failed for MSDU from %pM keyidx=%d\n",
			   hdr->addr2, keyidx);
		FUNC5(skb->dev, "%d\n",
			   FUNC2(mic, skb->data + skb->len - 8, 8) != 0);
		if (skb->dev) {
			FUNC6("skb->dev != NULL\n");
			FUNC7(skb->dev, hdr, keyidx);
		}
		tkey->dot11RSNAStatsTKIPLocalMICFailures++;
		return -1;
	}

	/* Update TSC counters for RX now that the packet verification has
	 * completed.
	 */
	tkey->rx_iv32 = tkey->rx_iv32_new;
	tkey->rx_iv16 = tkey->rx_iv16_new;

	FUNC8(skb, skb->len - 8);

	return 0;
}