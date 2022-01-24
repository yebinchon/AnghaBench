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
struct sk_buff {int len; unsigned char* data; scalar_t__ mac_len; } ;

/* Variables and functions */
 unsigned char DLE_FLAG ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC8(struct sk_buff *skb)
{
	struct sk_buff *iraw_skb;
	unsigned char c;
	unsigned char *cp;
	int len;

	/* size of new buffer (worst case = every byte must be stuffed):
	 * 2 * original size + room for link layer header
	 */
	iraw_skb = FUNC1(2 * skb->len + skb->mac_len);
	if (!iraw_skb) {
		FUNC2(skb);
		return NULL;
	}

	/* copy link layer header into new skb */
	FUNC7(iraw_skb);
	FUNC6(iraw_skb, skb->mac_len);
	FUNC3(FUNC4(iraw_skb), FUNC4(skb), skb->mac_len);
	iraw_skb->mac_len = skb->mac_len;

	/* copy and stuff data */
	cp = skb->data;
	len = skb->len;
	while (len--) {
		c = FUNC0(*cp++);
		if (c == DLE_FLAG)
			FUNC5(iraw_skb, c);
		FUNC5(iraw_skb, c);
	}
	FUNC2(skb);
	return iraw_skb;
}