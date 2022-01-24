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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct qlink_tlv_hdr {void* len; void* type; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct qlink_tlv_hdr* FUNC1 (struct sk_buff*,int) ; 

__attribute__((used)) static inline void FUNC2(struct sk_buff *skb, u16 tlv_id)
{
	struct qlink_tlv_hdr *hdr = FUNC1(skb, sizeof(*hdr));

	hdr->type = FUNC0(tlv_id);
	hdr->len = FUNC0(0);
}