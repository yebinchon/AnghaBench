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
struct rndis_packet_msg_type {void* DataLength; void* DataOffset; void* MessageLength; void* MessageType; } ;

/* Variables and functions */
 int RNDIS_MSG_PACKET ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rndis_packet_msg_type*,int /*<<< orphan*/ ,int) ; 
 struct rndis_packet_msg_type* FUNC2 (struct sk_buff*,int) ; 

void FUNC3(struct sk_buff *skb)
{
	struct rndis_packet_msg_type *header;

	if (!skb)
		return;
	header = FUNC2(skb, sizeof(*header));
	FUNC1(header, 0, sizeof *header);
	header->MessageType = FUNC0(RNDIS_MSG_PACKET);
	header->MessageLength = FUNC0(skb->len);
	header->DataOffset = FUNC0(36);
	header->DataLength = FUNC0(skb->len - sizeof(*header));
}