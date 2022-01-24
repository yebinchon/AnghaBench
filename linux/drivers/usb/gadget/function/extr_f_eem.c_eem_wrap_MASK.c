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
typedef  int u16 ;
struct usb_ep {int maxpacket; } ;
struct sk_buff {int len; } ;
struct gether {struct usb_ep* in_ep; } ;

/* Variables and functions */
 int EEM_HLEN ; 
 int ETH_FCS_LEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct gether *port, struct sk_buff *skb)
{
	struct sk_buff	*skb2 = NULL;
	struct usb_ep	*in = port->in_ep;
	int		headroom, tailroom, padlen = 0;
	u16		len;

	if (!skb)
		return NULL;

	len = skb->len;
	headroom = FUNC5(skb);
	tailroom = FUNC8(skb);

	/* When (len + EEM_HLEN + ETH_FCS_LEN) % in->maxpacket) is 0,
	 * stick two bytes of zero-length EEM packet on the end.
	 */
	if (((len + EEM_HLEN + ETH_FCS_LEN) % in->maxpacket) == 0)
		padlen += 2;

	if ((tailroom >= (ETH_FCS_LEN + padlen)) &&
			(headroom >= EEM_HLEN) && !FUNC3(skb))
		goto done;

	skb2 = FUNC4(skb, EEM_HLEN, ETH_FCS_LEN + padlen, GFP_ATOMIC);
	FUNC0(skb);
	skb = skb2;
	if (!skb)
		return skb;

done:
	/* use the "no CRC" option */
	FUNC1(0xdeadbeef, FUNC7(skb, 4));

	/* EEM packet header format:
	 * b0..13:	length of ethernet frame
	 * b14:		bmCRC (0 == sentinel CRC)
	 * b15:		bmType (0 == data)
	 */
	len = skb->len;
	FUNC2(len & 0x3FFF, FUNC6(skb, 2));

	/* add a zero-length EEM packet, if needed */
	if (padlen)
		FUNC2(0, FUNC7(skb, 2));

	return skb;
}