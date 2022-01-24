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
typedef  int /*<<< orphan*/  u8 ;
struct rx_pkt_attrib {scalar_t__ bdecrypted; int /*<<< orphan*/  encrypt; } ;
struct recv_frame {TYPE_1__* pkt; struct rx_pkt_attrib attrib; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int len; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

void FUNC4(struct net_device *dev, struct recv_frame *frame)
{
	struct rx_pkt_attrib *attr;
	int iv_len, icv_len;
	int data_len;
	u8 *data;

	if (!dev || !frame)
		return;
	if (!FUNC3(dev))
		return;

	attr = &frame->attrib;
	data = frame->pkt->data;
	data_len = frame->pkt->len;

	/* Broadcast and multicast frames don't have attr->{iv,icv}_len set */
	FUNC0(iv_len, icv_len, attr->encrypt);

	if (attr->bdecrypted)
		FUNC1(dev, data, data_len, iv_len, icv_len);
	else
		FUNC2(dev, data, data_len);
}