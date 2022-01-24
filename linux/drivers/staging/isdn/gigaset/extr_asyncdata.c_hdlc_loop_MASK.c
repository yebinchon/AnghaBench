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
struct sk_buff {int len; } ;
struct inbuf_t {unsigned char* data; int head; struct cardstate* cs; } ;
struct cardstate {int /*<<< orphan*/  dev; scalar_t__ dle; struct bc_state* bcs; } ;
struct bc_state {int inputstate; scalar_t__ rx_fcs; unsigned char emptycount; int rx_bufsize; struct sk_buff* rx_skb; } ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_HDLC ; 
 unsigned char DLE_FLAG ; 
 int INS_DLE_char ; 
 int INS_DLE_command ; 
 int INS_byte_stuff ; 
 int INS_have_data ; 
 unsigned char PPP_ESCAPE ; 
 unsigned char PPP_FLAG ; 
 scalar_t__ PPP_GOODFCS ; 
 scalar_t__ PPP_INITFCS ; 
 unsigned char PPP_TRANS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 scalar_t__ FUNC2 (scalar_t__,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct bc_state*) ; 
 struct sk_buff* FUNC8 (struct bc_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct bc_state*,struct sk_buff*) ; 
 scalar_t__ FUNC10 (unsigned char) ; 

__attribute__((used)) static unsigned FUNC11(unsigned numbytes, struct inbuf_t *inbuf)
{
	struct cardstate *cs = inbuf->cs;
	struct bc_state *bcs = cs->bcs;
	int inputstate = bcs->inputstate;
	__u16 fcs = bcs->rx_fcs;
	struct sk_buff *skb = bcs->rx_skb;
	unsigned char *src = inbuf->data + inbuf->head;
	unsigned procbytes = 0;
	unsigned char c;

	if (inputstate & INS_byte_stuff) {
		if (!numbytes)
			return 0;
		inputstate &= ~INS_byte_stuff;
		goto byte_stuff;
	}

	while (procbytes < numbytes) {
		c = *src++;
		procbytes++;
		if (c == DLE_FLAG) {
			if (inputstate & INS_DLE_char) {
				/* quoted DLE: clear quote flag */
				inputstate &= ~INS_DLE_char;
			} else if (cs->dle || (inputstate & INS_DLE_command)) {
				/* DLE escape, pass up for handling */
				inputstate |= INS_DLE_char;
				break;
			}
		}

		if (c == PPP_ESCAPE) {
			/* byte stuffing indicator: pull in next byte */
			if (procbytes >= numbytes) {
				/* end of buffer, save for later processing */
				inputstate |= INS_byte_stuff;
				break;
			}
byte_stuff:
			c = *src++;
			procbytes++;
			if (c == DLE_FLAG) {
				if (inputstate & INS_DLE_char) {
					/* quoted DLE: clear quote flag */
					inputstate &= ~INS_DLE_char;
				} else if (cs->dle ||
					   (inputstate & INS_DLE_command)) {
					/* DLE escape, pass up for handling */
					inputstate |=
						INS_DLE_char | INS_byte_stuff;
					break;
				}
			}
			c ^= PPP_TRANS;
#ifdef CONFIG_GIGASET_DEBUG
			if (!muststuff(c))
				gig_dbg(DEBUG_HDLC, "byte stuffed: 0x%02x", c);
#endif
		} else if (c == PPP_FLAG) {
			/* end of frame: process content if any */
			if (inputstate & INS_have_data) {
				FUNC6(DEBUG_HDLC,
					"7e----------------------------");

				/* check and pass received frame */
				if (!skb) {
					/* skipped frame */
					FUNC7(bcs);
				} else if (skb->len < 2) {
					/* frame too short for FCS */
					FUNC5(cs->dev,
						 "short frame (%d)\n",
						 skb->len);
					FUNC7(bcs);
					FUNC4(skb);
				} else if (fcs != PPP_GOODFCS) {
					/* frame check error */
					FUNC3(cs->dev,
						"Checksum failed, %u bytes corrupted!\n",
						skb->len);
					FUNC7(bcs);
					FUNC4(skb);
				} else {
					/* good frame */
					FUNC1(skb, skb->len - 2);
					FUNC9(bcs, skb);
				}

				/* prepare reception of next frame */
				inputstate &= ~INS_have_data;
				skb = FUNC8(bcs);
			} else {
				/* empty frame (7E 7E) */
#ifdef CONFIG_GIGASET_DEBUG
				++bcs->emptycount;
#endif
				if (!skb) {
					/* skipped (?) */
					FUNC7(bcs);
					skb = FUNC8(bcs);
				}
			}

			fcs = PPP_INITFCS;
			continue;
#ifdef CONFIG_GIGASET_DEBUG
		} else if (muststuff(c)) {
			/* Should not happen. Possible after ZDLE=1<CR><LF>. */
			gig_dbg(DEBUG_HDLC, "not byte stuffed: 0x%02x", c);
#endif
		}

		/* regular data byte, append to skb */
#ifdef CONFIG_GIGASET_DEBUG
		if (!(inputstate & INS_have_data)) {
			gig_dbg(DEBUG_HDLC, "7e (%d x) ================",
				bcs->emptycount);
			bcs->emptycount = 0;
		}
#endif
		inputstate |= INS_have_data;
		if (skb) {
			if (skb->len >= bcs->rx_bufsize) {
				FUNC5(cs->dev, "received packet too long\n");
				FUNC4(skb);
				/* skip remainder of packet */
				bcs->rx_skb = skb = NULL;
			} else {
				FUNC0(skb, c);
				fcs = FUNC2(fcs, c);
			}
		}
	}

	bcs->inputstate = inputstate;
	bcs->rx_fcs = fcs;
	return procbytes;
}