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
struct sk_buff {unsigned char* data; int len; scalar_t__ mac_len; } ;
typedef  int __u16 ;

/* Variables and functions */
 unsigned char PPP_ESCAPE ; 
 unsigned char PPP_FLAG ; 
 int PPP_INITFCS ; 
 unsigned char PPP_TRANS ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct sk_buff *skb)
{
	struct sk_buff *hdlc_skb;
	__u16 fcs;
	unsigned char c;
	unsigned char *cp;
	int len;
	unsigned int stuf_cnt;

	stuf_cnt = 0;
	fcs = PPP_INITFCS;
	cp = skb->data;
	len = skb->len;
	while (len--) {
		if (FUNC4(*cp))
			stuf_cnt++;
		fcs = FUNC0(fcs, *cp++);
	}
	fcs ^= 0xffff;			/* complement */

	/* size of new buffer: original size + number of stuffing bytes
	 * + 2 bytes FCS + 2 stuffing bytes for FCS (if needed) + 2 flag bytes
	 * + room for link layer header
	 */
	hdlc_skb = FUNC1(skb->len + stuf_cnt + 6 + skb->mac_len);
	if (!hdlc_skb) {
		FUNC2(skb);
		return NULL;
	}

	/* Copy link layer header into new skb */
	FUNC8(hdlc_skb);
	FUNC7(hdlc_skb, skb->mac_len);
	FUNC3(FUNC5(hdlc_skb), FUNC5(skb), skb->mac_len);
	hdlc_skb->mac_len = skb->mac_len;

	/* Add flag sequence in front of everything.. */
	FUNC6(hdlc_skb, PPP_FLAG);

	/* Perform byte stuffing while copying data. */
	while (skb->len--) {
		if (FUNC4(*skb->data)) {
			FUNC6(hdlc_skb, PPP_ESCAPE);
			FUNC6(hdlc_skb, (*skb->data++) ^ PPP_TRANS);
		} else
			FUNC6(hdlc_skb, *skb->data++);
	}

	/* Finally add FCS (byte stuffed) and flag sequence */
	c = (fcs & 0x00ff);	/* least significant byte first */
	if (FUNC4(c)) {
		FUNC6(hdlc_skb, PPP_ESCAPE);
		c ^= PPP_TRANS;
	}
	FUNC6(hdlc_skb, c);

	c = ((fcs >> 8) & 0x00ff);
	if (FUNC4(c)) {
		FUNC6(hdlc_skb, PPP_ESCAPE);
		c ^= PPP_TRANS;
	}
	FUNC6(hdlc_skb, c);

	FUNC6(hdlc_skb, PPP_FLAG);

	FUNC2(skb);
	return hdlc_skb;
}