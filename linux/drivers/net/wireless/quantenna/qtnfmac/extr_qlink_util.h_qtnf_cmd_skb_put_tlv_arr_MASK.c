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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u16 ;
struct sk_buff {int dummy; } ;
struct qlink_tlv_hdr {int /*<<< orphan*/  val; void* len; void* type; } ;

/* Variables and functions */
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 struct qlink_tlv_hdr* FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static inline void FUNC3(struct sk_buff *skb,
					    u16 tlv_id, const u8 arr[],
					    size_t arr_len)
{
	struct qlink_tlv_hdr *hdr = FUNC2(skb, sizeof(*hdr) + arr_len);

	hdr->type = FUNC0(tlv_id);
	hdr->len = FUNC0(arr_len);
	FUNC1(hdr->val, arr, arr_len);
}