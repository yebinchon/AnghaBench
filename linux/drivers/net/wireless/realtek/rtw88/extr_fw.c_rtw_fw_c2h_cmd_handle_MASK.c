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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; scalar_t__ cb; } ;
struct rtw_dev {int /*<<< orphan*/  mutex; } ;
struct rtw_c2h_cmd {int id; int /*<<< orphan*/  payload; } ;

/* Variables and functions */
#define  C2H_BT_INFO 130 
#define  C2H_HALMAC 129 
#define  C2H_WLAN_INFO 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,struct sk_buff*) ; 

void FUNC5(struct rtw_dev *rtwdev, struct sk_buff *skb)
{
	struct rtw_c2h_cmd *c2h;
	u32 pkt_offset;
	u8 len;

	pkt_offset = *((u32 *)skb->cb);
	c2h = (struct rtw_c2h_cmd *)(skb->data + pkt_offset);
	len = skb->len - pkt_offset - 2;

	FUNC0(&rtwdev->mutex);

	switch (c2h->id) {
	case C2H_BT_INFO:
		FUNC2(rtwdev, c2h->payload, len);
		break;
	case C2H_WLAN_INFO:
		FUNC3(rtwdev, c2h->payload, len);
		break;
	case C2H_HALMAC:
		FUNC4(rtwdev, skb);
		break;
	default:
		break;
	}

	FUNC1(&rtwdev->mutex);
}