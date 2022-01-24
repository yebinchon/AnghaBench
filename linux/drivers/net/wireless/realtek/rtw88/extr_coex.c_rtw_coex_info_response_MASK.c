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
struct sk_buff {int dummy; } ;
struct rtw_coex {int /*<<< orphan*/  wait; int /*<<< orphan*/  queue; } ;
struct rtw_dev {struct rtw_coex coex; } ;

/* Variables and functions */
 scalar_t__ COEX_RESP_ACK_BY_WL_FW ; 
 scalar_t__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct rtw_dev *rtwdev, struct sk_buff *skb)
{
	struct rtw_coex *coex = &rtwdev->coex;
	u8 *payload = FUNC0(skb);

	if (payload[0] != COEX_RESP_ACK_BY_WL_FW)
		return;

	FUNC1(&coex->queue, skb);
	FUNC2(&coex->wait);
}