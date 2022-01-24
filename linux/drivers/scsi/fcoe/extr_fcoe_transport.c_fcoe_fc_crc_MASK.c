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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {unsigned char* data; } ;
struct fc_frame {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_2__ {unsigned int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,unsigned long) ; 
 struct sk_buff* FUNC1 (struct fc_frame*) ; 
 unsigned char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned long FUNC4 (unsigned long,scalar_t__) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (struct sk_buff*) ; 
 TYPE_1__* FUNC9 (struct sk_buff*) ; 

u32 FUNC10(struct fc_frame *fp)
{
	struct sk_buff *skb = FUNC1(fp);
	skb_frag_t *frag;
	unsigned char *data;
	unsigned long off, len, clen;
	u32 crc;
	unsigned i;

	crc = FUNC0(~0, skb->data, FUNC8(skb));

	for (i = 0; i < FUNC9(skb)->nr_frags; i++) {
		frag = &FUNC9(skb)->frags[i];
		off = FUNC5(frag);
		len = FUNC7(frag);
		while (len > 0) {
			clen = FUNC4(len, PAGE_SIZE - (off & ~PAGE_MASK));
			data = FUNC2(
				FUNC6(frag) + (off >> PAGE_SHIFT));
			crc = FUNC0(crc, data + (off & ~PAGE_MASK), clen);
			FUNC3(data);
			off += clen;
			len -= clen;
		}
	}
	return crc;
}