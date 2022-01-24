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
struct sk_buff {int dummy; } ;
struct rtw_dev {int dummy; } ;
struct rtw_c2h_cmd {int* payload; } ;

/* Variables and functions */
#define  C2H_CCX_RPT 128 
 struct rtw_c2h_cmd* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC2(struct rtw_dev *rtwdev,
				      struct sk_buff *skb)
{
	struct rtw_c2h_cmd *c2h;
	u8 sub_cmd_id;

	c2h = FUNC0(skb);
	sub_cmd_id = c2h->payload[0];

	switch (sub_cmd_id) {
	case C2H_CCX_RPT:
		FUNC1(rtwdev, skb);
		break;
	default:
		break;
	}
}