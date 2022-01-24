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
typedef  int /*<<< orphan*/  value ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  tmp ;
struct sk_buff {int dummy; } ;
struct qlink_tlv_hdr {int /*<<< orphan*/  val; void* len; void* type; } ;
typedef  void* __le16 ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void**,int) ; 
 struct qlink_tlv_hdr* FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static inline void FUNC3(struct sk_buff *skb,
					    u16 tlv_id, u16 value)
{
	struct qlink_tlv_hdr *hdr = FUNC2(skb, sizeof(*hdr) + sizeof(value));
	__le16 tmp = FUNC0(value);

	hdr->type = FUNC0(tlv_id);
	hdr->len = FUNC0(sizeof(value));
	FUNC1(hdr->val, &tmp, sizeof(tmp));
}