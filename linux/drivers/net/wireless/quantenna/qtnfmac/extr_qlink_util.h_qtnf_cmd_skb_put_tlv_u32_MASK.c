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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  tmp ;
struct sk_buff {int dummy; } ;
struct qlink_tlv_hdr {int /*<<< orphan*/  val; void* len; void* type; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct qlink_tlv_hdr* FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static inline void FUNC4(struct sk_buff *skb,
					    u16 tlv_id, u32 value)
{
	struct qlink_tlv_hdr *hdr = FUNC3(skb, sizeof(*hdr) + sizeof(value));
	__le32 tmp = FUNC1(value);

	hdr->type = FUNC0(tlv_id);
	hdr->len = FUNC0(sizeof(value));
	FUNC2(hdr->val, &tmp, sizeof(tmp));
}