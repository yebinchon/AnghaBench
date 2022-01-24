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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ cb; } ;
struct rtl_tcb_desc {int last_inipkt; int /*<<< orphan*/  cmd_or_init; int /*<<< orphan*/  queue_index; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_PACKET_TYPE_INIT ; 
 scalar_t__ MAX_FIRMWARE_CODE_SIZE ; 
 int /*<<< orphan*/  TPPOLL_CQ ; 
 int /*<<< orphan*/  TP_POLL ; 
 int /*<<< orphan*/  TXCMD_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 struct sk_buff* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static bool FUNC8(struct ieee80211_hw *hw,
		u8 *code_virtual_address, u32 buffer_len)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct sk_buff *skb;
	struct rtl_tcb_desc *tcb_desc;
	u16 frag_threshold = MAX_FIRMWARE_CODE_SIZE;
	u16 frag_length, frag_offset = 0;
	u16 extra_descoffset = 0;
	u8 last_inipkt = 0;

	FUNC1(hw);

	if (buffer_len >= MAX_FIRMWARE_CODE_SIZE) {
		FUNC3("Size over FIRMWARE_CODE_SIZE!\n");
		return false;
	}

	extra_descoffset = 0;

	do {
		if ((buffer_len - frag_offset) > frag_threshold) {
			frag_length = frag_threshold + extra_descoffset;
		} else {
			frag_length = (u16)(buffer_len - frag_offset +
					    extra_descoffset);
			last_inipkt = 1;
		}

		/* Allocate skb buffer to contain firmware */
		/* info and tx descriptor info. */
		skb = FUNC2(frag_length);
		if (!skb)
			return false;
		FUNC7(skb, extra_descoffset);
		FUNC6(skb, code_virtual_address + frag_offset,
			     (u32)(frag_length - extra_descoffset));

		tcb_desc = (struct rtl_tcb_desc *)(skb->cb);
		tcb_desc->queue_index = TXCMD_QUEUE;
		tcb_desc->cmd_or_init = DESC_PACKET_TYPE_INIT;
		tcb_desc->last_inipkt = last_inipkt;

		FUNC0(hw, skb, last_inipkt);

		frag_offset += (frag_length - extra_descoffset);

	} while (frag_offset < buffer_len);

	FUNC5(rtlpriv, TP_POLL, TPPOLL_CQ);

	return true ;
}