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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct rtw_tx_pkt_info {scalar_t__ tx_pkt_size; } ;
struct rtw_dev {TYPE_1__* chip; } ;
typedef  int /*<<< orphan*/  pkt_info ;
struct TYPE_2__ {scalar_t__ tx_pkt_desc_sz; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RTW_TX_QUEUE_H2C ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_tx_pkt_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct rtw_dev*,struct rtw_tx_pkt_info*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct rtw_dev *rtwdev, u8 *buf, u32 size)
{
	struct sk_buff *skb;
	struct rtw_tx_pkt_info pkt_info;
	u32 tx_pkt_desc_sz;
	u32 length;

	tx_pkt_desc_sz = rtwdev->chip->tx_pkt_desc_sz;
	length = size + tx_pkt_desc_sz;
	skb = FUNC0(length);
	if (!skb)
		return -ENOMEM;

	FUNC5(skb, tx_pkt_desc_sz);
	FUNC1((u8 *)FUNC4(skb, size), buf, size);
	FUNC2(&pkt_info, 0, sizeof(pkt_info));
	pkt_info.tx_pkt_size = size;

	return FUNC3(rtwdev, &pkt_info, skb, RTW_TX_QUEUE_H2C);
}