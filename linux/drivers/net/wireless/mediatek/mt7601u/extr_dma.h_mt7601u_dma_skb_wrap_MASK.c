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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  info ;
typedef  enum mt76_msg_port { ____Placeholder_mt76_msg_port } mt76_msg_port ;
typedef  enum mt76_info_type { ____Placeholder_mt76_info_type } mt76_info_type ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_TXD_INFO_D_PORT ; 
 int /*<<< orphan*/  MT_TXD_INFO_LEN ; 
 int /*<<< orphan*/  MT_TXD_INFO_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static inline int FUNC5(struct sk_buff *skb,
				       enum mt76_msg_port d_port,
				       enum mt76_info_type type, u32 flags)
{
	u32 info;

	/* Buffer layout:
	 *	|   4B   | xfer len |      pad       |  4B  |
	 *	| TXINFO | pkt/cmd  | zero pad to 4B | zero |
	 *
	 * length field of TXINFO should be set to 'xfer len'.
	 */

	info = flags |
		FUNC0(MT_TXD_INFO_LEN, FUNC2(skb->len, 4)) |
		FUNC0(MT_TXD_INFO_D_PORT, d_port) |
		FUNC0(MT_TXD_INFO_TYPE, type);

	FUNC1(info, FUNC3(skb, sizeof(info)));
	return FUNC4(skb, FUNC2(skb->len, 4) + 4);
}