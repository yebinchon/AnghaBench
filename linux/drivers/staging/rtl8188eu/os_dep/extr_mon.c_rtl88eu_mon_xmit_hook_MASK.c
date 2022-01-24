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
typedef  int /*<<< orphan*/  uint ;
typedef  int /*<<< orphan*/  u8 ;
struct pkt_attrib {int nr_frags; int /*<<< orphan*/  iv_len; int /*<<< orphan*/  last_txcmdsz; } ;
struct xmit_frame {int pkt_offset; int /*<<< orphan*/ * buf_addr; struct pkt_attrib attrib; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int PACKET_OFFSET_SZ ; 
 int TXDESC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (size_t,int) ; 

void FUNC3(struct net_device *dev, struct xmit_frame *frame,
			   uint frag_len)
{
	struct pkt_attrib *attr;
	u8 *data;
	int i, offset;

	if (!dev || !frame)
		return;
	if (!FUNC1(dev))
		return;

	attr = &frame->attrib;

	offset = TXDESC_SIZE + frame->pkt_offset * PACKET_OFFSET_SZ;
	data = frame->buf_addr + offset;

	for (i = 0; i < attr->nr_frags - 1; i++) {
		FUNC0(dev, data, frag_len, attr->iv_len, 0);
		data += frag_len;
		data = (u8 *)FUNC2((size_t)data, 4);
	}
	/* Last fragment has different length */
	FUNC0(dev, data, attr->last_txcmdsz, attr->iv_len, 0);
}